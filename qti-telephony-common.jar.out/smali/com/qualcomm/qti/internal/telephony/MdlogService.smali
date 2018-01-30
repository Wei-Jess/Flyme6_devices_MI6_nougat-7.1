.class public Lcom/qualcomm/qti/internal/telephony/MdlogService;
.super Landroid/content/ContextWrapper;
.source "MdlogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/MdlogService$1;,
        Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;,
        Lcom/qualcomm/qti/internal/telephony/MdlogService$MdlogTimerTask;
    }
.end annotation


# static fields
.field private static final DIAG_LOG_DIR:Ljava/lang/String;

.field private static final INTENT_MDLOG_COMPLETE:Ljava/lang/String; = "com.miui.core.intent.ACTION_DUMP_CACHED_LOG_COMPLETE"

.field private static final INTENT_MDLOG_EXTRA_KEY:Ljava/lang/String; = "extra_log"

.field private static final INTENT_MDLOG_EXTRA_VAL:Ljava/lang/String; = "modem"

.field private static final INTENT_MDLOG_START:Ljava/lang/String; = "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

.field private static final LOGGING_INTERVAL:J = 0x2bf20L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MIUI_TARGET_LOG_DIR:Ljava/lang/String;

.field private static final SERVICE_MDLOG_START:Ljava/lang/String; = "diag_mdlog_start"

.field private static final SERVICE_MDLOG_STOP:Ljava/lang/String; = "diag_mdlog_stop"

.field private static final STORAGE_ROOT_DIR:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/MdlogService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLogFilesPost:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogFilesPrev:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMdLoging:Z

.field private mMdlogReceiver:Landroid/content/BroadcastReceiver;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/MdlogService;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->handleMDlogIntent()V

    return-void
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0
    .param p0, "l"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/internal/telephony/MdlogService;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->stopMdLog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/qualcomm/qti/internal/telephony/MdlogService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->LOG_TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->STORAGE_ROOT_DIR:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/MdlogService;->STORAGE_ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "diag_logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->DIAG_LOG_DIR:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/MdlogService;->STORAGE_ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MIUI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "debug_log"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "com.android.phone"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "dump"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->MIUI_TARGET_LOG_DIR:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/MdlogService$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/MdlogService$1;-><init>(Lcom/qualcomm/qti/internal/telephony/MdlogService;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mMdlogReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mContext:Landroid/content/Context;

    .line 78
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mTimer:Ljava/util/Timer;

    .line 79
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mLogFilesPrev:Ljava/util/HashSet;

    .line 80
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mLogFilesPost:Ljava/util/HashSet;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mMdlogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method private getNewLogFolder()Ljava/lang/String;
    .locals 6

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "result":Ljava/lang/String;
    const-string/jumbo v0, "diag_mdlog_pid"

    .line 141
    .local v0, "eculdedFile":Ljava/lang/String;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mLogFilesPost:Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mLogFilesPrev:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    move-object v1, v2

    .line 152
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getNewLogFolder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->log(Ljava/lang/String;)V

    .line 153
    return-object v1
.end method

.method private handleMDlogIntent()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    const-string/jumbo v1, "diag_mdlog_start"

    invoke-static {v1}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const-string/jumbo v0, "mdlog service already running, new request ingored."

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->log(Ljava/lang/String;)V

    .line 97
    return-void

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mMdLoging:Z

    if-eqz v0, :cond_1

    .line 101
    const-string/jumbo v0, "We are busy handling previous request, new request ingored."

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->log(Ljava/lang/String;)V

    .line 102
    return-void

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->startMdLog()V

    .line 94
    return-void
.end method

.method public static instance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->sInstance:Lcom/qualcomm/qti/internal/telephony/MdlogService;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/MdlogService;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->sInstance:Lcom/qualcomm/qti/internal/telephony/MdlogService;

    .line 88
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "l"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method private moveToTargetFolder()V
    .locals 5

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->getNewLogFolder()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "savedLogFolder":Ljava/lang/String;
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/MdlogService;->MIUI_TARGET_LOG_DIR:Ljava/lang/String;

    .line 159
    .local v1, "targetDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "targetFileName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/MdlogService;->DIAG_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/MdlogService;->MIUI_TARGET_LOG_DIR:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;->-wrap0(Ljava/io/File;)Z

    .line 163
    invoke-static {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;->fileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;->-wrap0(Ljava/io/File;)Z

    .line 156
    return-void
.end method

.method private saveDiagFolderList(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "fileSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 130
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/MdlogService;->DIAG_LOG_DIR:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "fileList":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 133
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private sendBroadcast()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.miui.bugreport"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method private startMdLog()V
    .locals 4

    .prologue
    .line 110
    const-string/jumbo v0, "startMdLog"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->log(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mMdLoging:Z

    .line 112
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mLogFilesPrev:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->saveDiagFolderList(Ljava/util/HashSet;)V

    .line 113
    const-string/jumbo v0, "diag_mdlog_start"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/MdlogService$MdlogTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/qti/internal/telephony/MdlogService$MdlogTimerTask;-><init>(Lcom/qualcomm/qti/internal/telephony/MdlogService;Lcom/qualcomm/qti/internal/telephony/MdlogService$MdlogTimerTask;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 109
    return-void
.end method

.method private stopMdLog()V
    .locals 1

    .prologue
    .line 118
    const-string/jumbo v0, "stopMdLog"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->log(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mMdLoging:Z

    .line 121
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService;->mLogFilesPost:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->saveDiagFolderList(Ljava/util/HashSet;)V

    .line 122
    const-string/jumbo v0, "diag_mdlog_stop"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->moveToTargetFolder()V

    .line 125
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->sendBroadcast()V

    .line 117
    return-void
.end method
