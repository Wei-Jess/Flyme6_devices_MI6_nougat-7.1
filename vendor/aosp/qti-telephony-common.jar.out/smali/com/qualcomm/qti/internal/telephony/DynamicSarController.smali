.class public Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
.super Landroid/content/ContextWrapper;
.source "DynamicSarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;,
        Lcom/qualcomm/qti/internal/telephony/DynamicSarController$2;,
        Lcom/qualcomm/qti/internal/telephony/DynamicSarController$3;,
        Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;
    }
.end annotation


# static fields
.field private static final DYNAMIC_SAR_LEVEL_BASE:I = 0x0

.field private static final DYNAMIC_SAR_LEVEL_CABLE:I = 0x1

.field private static final DYNAMIC_SAR_LEVEL_SENSOR:I = 0x2

.field private static final EVENT_ASDIV_QUERY_DONE:I = 0x3

.field private static final EVENT_DYNAMIC_SAR_CABLE:I = 0x2

.field private static final EVENT_DYNAMIC_SAR_SENSOR:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "DynamicSarController"

.field private static final PROPERTY_DYNAMIC_SAR_CABLE:Ljava/lang/String; = "persist.radio.dynamic_cab_sar"

.field private static final PROPERTY_DYNAMIC_SAR_SENSOR:Ljava/lang/String; = "persist.radio.dynamic_sar"

.field private static mCableSarEnabled:Z = false

.field private static final mD5DeviceId:Ljava/lang/String; = "chiron"

.field private static mDeviceId:Ljava/lang/String;

.field private static mIfGlobal:Ljava/lang/String;

.field private static mSensorSarEnabled:Z

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static sIntance:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;


# instance fields
.field private bCallStateActive:Z

.field private bDataStateActive:Z

.field mCmdProc:Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

.field private final mD5SensorEventListener:Landroid/hardware/SensorEventListener;

.field private mHandler:Landroid/os/Handler;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mProximitSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1()Landroid/telephony/TelephonyManager;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->pollCableGpio()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;II)V
    .locals 0
    .param p1, "messageType"    # I
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->refreshSensorListener(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mIfGlobal:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "sagit"

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mDeviceId:Ljava/lang/String;

    .line 35
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorSarEnabled:Z

    .line 36
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCableSarEnabled:Z

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

    .line 58
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    .line 57
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mProximitSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 78
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    .line 77
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mD5SensorEventListener:Landroid/hardware/SensorEventListener;

    .line 87
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$3;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 109
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->onInitSetup()V

    .line 107
    return-void
.end method

.method public static make(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->sIntance:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->sIntance:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 101
    :cond_0
    return-void
.end method

.method private onInitSetup()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    const-string/jumbo v0, "persist.radio.dynamic_cab_sar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCableSarEnabled:Z

    .line 114
    const-string/jumbo v0, "persist.radio.dynamic_sar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorSarEnabled:Z

    .line 115
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mDeviceId:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, "ro.product.mod_device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mIfGlobal:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, "chiron"

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 122
    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 123
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2654

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensor:Landroid/hardware/Sensor;

    .line 124
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 125
    const-string/jumbo v0, "DynamicSarController"

    const-string/jumbo v1, "this is not NA software!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :goto_0
    const-string/jumbo v0, "DynamicSarController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInitSetup, sensor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorSarEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCableSarEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mD5SensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 129
    const-string/jumbo v0, "DynamicSarController"

    const-string/jumbo v1, "open SAR sensor for D5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_2
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorSarEnabled:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCableSarEnabled:Z

    if-eqz v0, :cond_0

    .line 134
    :cond_3
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

    .line 135
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;->start()V

    .line 137
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 138
    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 139
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensor:Landroid/hardware/Sensor;

    .line 140
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;->getCmdHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHandler:Landroid/os/Handler;

    .line 142
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorSarEnabled:Z

    if-eqz v0, :cond_4

    .line 143
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->startSensorListener()V

    .line 146
    :cond_4
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCableSarEnabled:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->startPollCableStatus()V

    goto/16 :goto_0
.end method

.method private final pollCableGpio()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 203
    const-string/jumbo v2, "/dev/gpio_rf"

    .line 204
    .local v2, "hwDevice":Ljava/lang/String;
    const-string/jumbo v4, "DynamicSarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pollCableGpio, polling device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 208
    .local v0, "devStream":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 209
    .local v3, "value":Z
    const-string/jumbo v4, "DynamicSarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pollCableGpio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :goto_1
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v4, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v0    # "devStream":Ljava/io/DataInputStream;
    .end local v3    # "value":Z
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    return-void

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "devStream":Ljava/io/DataInputStream;
    .restart local v3    # "value":Z
    :cond_0
    move v4, v5

    .line 210
    goto :goto_1
.end method

.method private refreshSensorListener(II)V
    .locals 5
    .param p1, "messageType"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    const/16 v0, 0x80

    if-ne p1, v0, :cond_6

    .line 162
    if-eq p2, v2, :cond_0

    if-ne p2, v3, :cond_4

    .line 164
    :cond_0
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bDataStateActive:Z

    .line 179
    :cond_1
    :goto_0
    const-string/jumbo v0, "DynamicSarController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshSensorListener, sensor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorSarEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bCallStateActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bDataStateActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorSarEnabled:Z

    if-eqz v0, :cond_3

    .line 181
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bCallStateActive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bDataStateActive:Z

    if-eqz v0, :cond_9

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mProximitSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 160
    :cond_3
    :goto_1
    return-void

    .line 163
    :cond_4
    if-eq p2, v4, :cond_0

    .line 166
    if-eqz p2, :cond_5

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 167
    :cond_5
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bDataStateActive:Z

    goto :goto_0

    .line 170
    :cond_6
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    .line 171
    if-eq p2, v2, :cond_7

    if-ne p2, v3, :cond_8

    .line 172
    :cond_7
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bCallStateActive:Z

    goto :goto_0

    .line 174
    :cond_8
    if-nez p2, :cond_1

    .line 175
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bCallStateActive:Z

    goto :goto_0

    .line 185
    :cond_9
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mProximitSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_1
.end method

.method private final startPollCableStatus()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    .line 198
    .local v0, "sarGpioPollThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 191
    return-void
.end method

.method private startSensorListener()V
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 156
    return-void
.end method
