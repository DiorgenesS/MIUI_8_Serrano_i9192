.class public Lcom/android/internal/telephony/SerranoRIL;
.super Lcom/android/internal/telephony/RIL;
.source "SerranoRIL.java"


# static fields
.field private static final RIL_REQUEST_DIAL_EMERGENCY:I = 0x2720

.field private static final RIL_UNSOL_AM:I = 0x2b02

.field private static final RIL_UNSOL_DEVICE_READY_NOTI:I = 0x2b00

.field private static final RIL_UNSOL_ON_SS_SAMSUNG:I = 0x410

.field private static final RIL_UNSOL_RESPONSE_HANDOVER:I = 0x2b0d

.field private static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x40c

.field private static final RIL_UNSOL_STK_CC_ALPHA_NOTIFY_SAMSUNG:I = 0x411

.field private static final RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED_SAMSUNG:I = 0x2b17

.field private static final RIL_UNSOL_WB_AMR_STATE:I = 0x2b09


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/SerranoRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 56
    return-void
.end method

.method private dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 357
    const/16 v1, 0x2720

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 358
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SerranoRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SerranoRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 354
    return-void
.end method

.method private responseDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x3

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SerranoRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 300
    .local v0, "response":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 301
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 300
    if-eqz v1, :cond_0

    .line 302
    aget-object v1, v0, v3

    const-string/jumbo v2, "102"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 300
    if-eqz v1, :cond_0

    .line 303
    const-string/jumbo v1, "2"

    aput-object v1, v0, v3

    .line 305
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/telephony/SerranoRIL;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    .line 65
    return-void

    .line 68
    :cond_0
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 70
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    if-nez p3, :cond_1

    .line 77
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SerranoRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SerranoRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 62
    return-void

    .line 79
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 413
    const-string/jumbo v1, "getCellInfoList: not supported"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 414
    if-eqz p1, :cond_0

    .line 415
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    .line 416
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 415
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 417
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 418
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 412
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 402
    const-string/jumbo v1, "getHardwareConfig: not supported"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 403
    if-eqz p1, :cond_0

    .line 404
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    .line 405
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 404
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 406
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 407
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 401
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 435
    const-string/jumbo v1, "getImsRegistrationState: not supported"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 436
    if-eqz p1, :cond_0

    .line 437
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    .line 438
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 437
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 439
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 440
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 434
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 372
    const-string/jumbo v1, "getRadioCapability: returning static radio capability"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 373
    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/SerranoRIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    .line 375
    .local v0, "ret":Ljava/lang/Object;
    invoke-static {p1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 376
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 371
    .end local v0    # "ret":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x0

    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 241
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 242
    .local v5, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 243
    .local v1, "error":I
    const/4 v4, 0x0

    .line 245
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v9, p0, Lcom/android/internal/telephony/SerranoRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v9

    .line 246
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/SerranoRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/RILRequest;

    .line 247
    .local v7, "tr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v7, :cond_1

    iget v8, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    if-ne v8, v5, :cond_1

    .line 248
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-lez v8, :cond_1

    .line 249
    :cond_0
    :try_start_1
    iget v8, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v8, :pswitch_data_0

    .end local v4    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    :goto_0
    monitor-exit v9

    .line 265
    if-nez v4, :cond_3

    .line 267
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 269
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    return-object v8

    .line 252
    .restart local v4    # "rr":Lcom/android/internal/telephony/RILRequest;
    :pswitch_0
    move-object v4, v7

    .line 253
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    goto :goto_0

    .line 254
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    :catch_0
    move-exception v6

    .line 256
    .local v6, "thr":Ljava/lang/Throwable;
    :try_start_2
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_2

    .line 257
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v10, 0x0

    invoke-static {v8, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 258
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v9

    .line 260
    return-object v7

    .line 245
    .end local v6    # "thr":Ljava/lang/Throwable;
    .end local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 271
    .end local v4    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SerranoRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 272
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v4, :cond_4

    .line 273
    return-object v4

    .line 275
    :cond_4
    const/4 v3, 0x0

    .line 276
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v8

    if-lez v8, :cond_6

    .line 277
    :cond_5
    iget v8, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v8, :pswitch_data_1

    .line 280
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unrecognized solicited response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 278
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SerranoRIL;->responseDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 284
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/SerranoRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 285
    const-string/jumbo v9, " "

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 285
    iget v9, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9, v3}, Lcom/android/internal/telephony/SerranoRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 286
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_7

    .line 287
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v3, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 288
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 290
    :cond_7
    return-object v4

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    .line 277
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 313
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .local v1, "response":I
    sparse-switch v1, :sswitch_data_0

    .line 345
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 348
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 349
    return-void

    .line 317
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SerranoRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 310
    :goto_0
    return-void

    .line 320
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SerranoRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "ret":Ljava/lang/Object;
    goto :goto_0

    .line 323
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SerranoRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 326
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SerranoRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 329
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SerranoRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 332
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 333
    const/16 v3, 0x413

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 336
    :sswitch_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 337
    const/16 v3, 0x414

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 340
    :sswitch_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 341
    const/16 v3, 0x40e

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 315
    :sswitch_data_0
    .sparse-switch
        0x40c -> :sswitch_0
        0x410 -> :sswitch_5
        0x411 -> :sswitch_6
        0x2b00 -> :sswitch_1
        0x2b02 -> :sswitch_2
        0x2b09 -> :sswitch_3
        0x2b0d -> :sswitch_4
        0x2b17 -> :sswitch_7
    .end sparse-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 140
    .local v8, "num":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v9, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_7

    .line 148
    new-instance v4, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v4}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 150
    .local v4, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-static {v13}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v13

    iput-object v13, v4, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    iput v13, v4, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    iput v13, v4, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_1
    iput-boolean v13, v4, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    :goto_2
    iput-boolean v13, v4, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    iput v13, v4, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 157
    .local v12, "voiceSettings":I
    if-nez v12, :cond_2

    const/4 v13, 0x0

    :goto_3
    iput-boolean v13, v4, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v6, 0x1

    .line 159
    .local v6, "isVideo":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .local v2, "call_type":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .local v1, "call_domain":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "csv":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    :goto_5
    iput-boolean v13, v4, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 165
    .local v7, "np":I
    invoke-static {v7}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v13

    iput v13, v4, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    iput v13, v4, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 169
    .local v11, "uusInfoPresent":I
    const/4 v13, 0x1

    if-ne v11, v13, :cond_5

    .line 170
    new-instance v13, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v13}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v13, v4, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 171
    iget-object v13, v4, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 172
    iget-object v13, v4, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 174
    .local v10, "userData":[B
    iget-object v13, v4, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 175
    const-string/jumbo v13, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    .line 176
    iget-object v15, v4, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v15}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    iget-object v15, v4, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v15}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 177
    iget-object v15, v4, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v15}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v15

    array-length v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v14, v16

    .line 175
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SerranoRIL;->riljLogv(Ljava/lang/String;)V

    .line 178
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Incoming UUS : data (string)="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 179
    new-instance v14, Ljava/lang/String;

    iget-object v15, v4, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v15}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    .line 178
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SerranoRIL;->riljLogv(Ljava/lang/String;)V

    .line 180
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Incoming UUS : data (hex): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 181
    iget-object v14, v4, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v14}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    .line 180
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SerranoRIL;->riljLogv(Ljava/lang/String;)V

    .line 187
    .end local v10    # "userData":[B
    :goto_6
    iget-object v13, v4, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v14, v4, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v13, v14}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 189
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-boolean v13, v4, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v13, :cond_6

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SerranoRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 193
    const-string/jumbo v13, "InCall VoicePrivacy is enabled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 147
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 153
    .end local v1    # "call_domain":I
    .end local v2    # "call_type":I
    .end local v3    # "csv":Ljava/lang/String;
    .end local v6    # "isVideo":Z
    .end local v7    # "np":I
    .end local v11    # "uusInfoPresent":I
    .end local v12    # "voiceSettings":I
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 154
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 157
    .restart local v12    # "voiceSettings":I
    :cond_2
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 158
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "isVideo":Z
    goto/16 :goto_4

    .line 162
    .restart local v1    # "call_domain":I
    .restart local v2    # "call_type":I
    .restart local v3    # "csv":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 183
    .restart local v7    # "np":I
    .restart local v11    # "uusInfoPresent":I
    :cond_5
    const-string/jumbo v13, "Incoming UUS : NOT present!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SerranoRIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_6

    .line 195
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SerranoRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 196
    const-string/jumbo v13, "InCall VoicePrivacy is disabled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_7

    .line 200
    .end local v1    # "call_domain":I
    .end local v2    # "call_type":I
    .end local v3    # "csv":Ljava/lang/String;
    .end local v4    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v6    # "isVideo":Z
    .end local v7    # "np":I
    .end local v11    # "uusInfoPresent":I
    .end local v12    # "voiceSettings":I
    :cond_7
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 202
    if-nez v8, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SerranoRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SerranoRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v13, :cond_8

    .line 204
    const-string/jumbo v13, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SerranoRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v13}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 210
    :cond_8
    return-object v9
.end method

.method protected responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .local v2, "numInts":I
    new-array v3, v2, [I

    .line 387
    .local v3, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v1

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 391
    .local v0, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    aget v4, v3, v5

    iput v4, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lez v4, :cond_1

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 395
    :cond_1
    return-object v0
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 95
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 96
    .local v1, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 105
    .local v3, "numApplications":I
    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 106
    const/16 v3, 0x8

    .line 108
    :cond_0
    new-array v4, v3, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 110
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 111
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 112
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 126
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v4, v2

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_1
    return-object v1
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 18
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 215
    const/16 v16, 0xc

    .line 219
    .local v16, "numInts":I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 220
    .local v17, "response":[I
    const/4 v15, 0x0

    .line 215
    .local v15, "i":I
    :goto_0
    const/16 v1, 0xc

    .line 220
    if-ge v15, v1, :cond_0

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v17, v15

    .line 220
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 225
    :cond_0
    const/4 v1, 0x0

    aget v2, v17, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v17, v1

    .line 228
    const/4 v1, 0x2

    aget v2, v17, v1

    rem-int/lit16 v2, v2, 0x100

    aput v2, v17, v1

    .line 229
    const/4 v1, 0x4

    aget v2, v17, v1

    rem-int/lit16 v2, v2, 0x100

    aput v2, v17, v1

    .line 230
    const/4 v1, 0x7

    aget v2, v17, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v17, v1

    .line 232
    new-instance v1, Landroid/telephony/SignalStrength;

    const/4 v2, 0x0

    aget v2, v17, v2

    const/4 v3, 0x1

    aget v3, v17, v3

    const/4 v4, 0x2

    aget v4, v17, v4

    const/4 v5, 0x3

    aget v5, v17, v5

    const/4 v6, 0x4

    aget v6, v17, v6

    const/4 v7, 0x5

    aget v7, v17, v7

    const/4 v8, 0x6

    aget v8, v17, v8

    const/4 v9, 0x7

    aget v9, v17, v9

    const/16 v10, 0x8

    aget v10, v17, v10

    const/16 v11, 0x9

    aget v11, v17, v11

    const/16 v12, 0xa

    aget v12, v17, v12

    const/16 v13, 0xb

    aget v13, v17, v13

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    return-object v1
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 3
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 424
    const-string/jumbo v1, "setCellInfoListRate: not supported"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 425
    if-eqz p2, :cond_0

    .line 426
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    .line 427
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 426
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 428
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 429
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 423
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 446
    const-string/jumbo v3, "persist.radio.multisim.config"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "dsds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    const/16 v0, 0x7b

    .line 449
    .local v0, "req":I
    if-eqz p1, :cond_1

    .line 450
    const/16 v0, 0x74

    .line 451
    invoke-static {v0, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 458
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SerranoRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 445
    .end local v0    # "req":I
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    return-void

    .line 453
    .restart local v0    # "req":I
    :cond_1
    invoke-static {v0, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 454
    .restart local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setUiccSubscription(IZLandroid/os/Message;)V
    .locals 3
    .param p1, "appIndex"    # I
    .param p2, "activate"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 476
    const/16 v1, 0x73

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 478
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SerranoRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 479
    const-string/jumbo v2, " appIndex: "

    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 479
    const-string/jumbo v2, " activate: "

    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 481
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/SerranoRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/SerranoRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SerranoRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 474
    return-void

    .line 484
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 3
    .param p1, "reportIntervalMs"    # I
    .param p2, "pullMode"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 464
    const-string/jumbo v1, "startLceService: not supported"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SerranoRIL;->riljLog(Ljava/lang/String;)V

    .line 465
    if-eqz p3, :cond_0

    .line 466
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    .line 467
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 466
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 468
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 469
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 463
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method
