.class Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;
.super Landroid/os/Handler;
.source "DynamicSarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmdHandler"
.end annotation


# static fields
.field private static final ASDIV_QUERY_REQ_NUM:I = 0x80035

.field private static final DYNAMIC_SAR_REQ_NUM:I = 0x80034

.field private static final INT_SIZE:I = 0x4

.field private static final OEMHOOK_REQ_LEN:I

.field private static final OEM_IDENTIFIER:Ljava/lang/String; = "QOEMHOOK"

.field private static mReqBuf:[B

.field private static mResBuf:[B


# instance fields
.field private sarState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    const-string/jumbo v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    sput v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->OEMHOOK_REQ_LEN:I

    .line 235
    sget v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->OEMHOOK_REQ_LEN:I

    new-array v0, v0, [B

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mReqBuf:[B

    .line 236
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    .line 229
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;-><init>()V

    return-void
.end method

.method private cmdMsgSend(II)V
    .locals 4
    .param p1, "reqNum"    # I
    .param p2, "para1"    # I

    .prologue
    .line 240
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mReqBuf:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 241
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 242
    const-string/jumbo v1, "QOEMHOOK"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 244
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 245
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 247
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->-get1()Landroid/telephony/TelephonyManager;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mReqBuf:[B

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    .line 248
    const-string/jumbo v1, "DynamicSarController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "req = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mReqBuf:[B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method private queryASDivStatus()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 252
    const v0, 0x80035

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->cmdMsgSend(II)V

    .line 253
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 254
    const-string/jumbo v0, "DynamicSarController"

    const-string/jumbo v1, "ASDiv Status is default, no action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 256
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 257
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;->-get0()Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;->-get0()Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 260
    :cond_1
    const-string/jumbo v0, "DynamicSarController"

    const-string/jumbo v1, "ASDiv Status result is unexcepted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const v2, 0x80034

    .line 266
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 268
    :pswitch_0
    const-string/jumbo v1, "persist.radio.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "model":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    .line 270
    const-string/jumbo v1, "centaur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->queryASDivStatus()V

    goto :goto_0

    .line 273
    :cond_0
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    invoke-direct {p0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->cmdMsgSend(II)V

    goto :goto_0

    .line 278
    .end local v0    # "model":Ljava/lang/String;
    :pswitch_1
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    invoke-direct {p0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->cmdMsgSend(II)V

    goto :goto_0

    .line 282
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    .line 283
    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    .line 287
    :goto_1
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    invoke-direct {p0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->cmdMsgSend(II)V

    goto :goto_0

    .line 285
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    goto :goto_1

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
