import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if " ||" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(" ||", ' || getprop("ro.build.product") == "serranods" || getprop("ro.product.device") == "serranodsub" || getprop("ro.build.product") == "serranodsub" || getprop("ro.product.device") == "serranodsdd" || getprop("ro.build.product") == "serranodsdd" || getprop("ro.product.device") == "serranodsxx" || getprop("ro.build.product") == "serranodsxx" || getprop("ro.product.device") == "GT-I9192" || getprop("ro.build.product") == "GT-I9192" ||')
            return

def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "/dev/block/mmcblk0p21" in edify.script[i]:
      edify.script[i] = 'format("ext4", "EMMC", "/dev/block/mmcblk0p21", "0", "/system");'
      return

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def FullOTA_InstallEnd(info):
    WritePolicyConfig(info)
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
