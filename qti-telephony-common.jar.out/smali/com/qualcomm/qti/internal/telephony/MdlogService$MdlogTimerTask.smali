.class Lcom/qualcomm/qti/internal/telephony/MdlogService$MdlogTimerTask;
.super Ljava/util/TimerTask;
.source "MdlogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/MdlogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MdlogTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/MdlogService;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/internal/telephony/MdlogService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/MdlogService;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService$MdlogTimerTask;->this$0:Lcom/qualcomm/qti/internal/telephony/MdlogService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/MdlogService;Lcom/qualcomm/qti/internal/telephony/MdlogService$MdlogTimerTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/MdlogService;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/MdlogService$MdlogTimerTask;-><init>(Lcom/qualcomm/qti/internal/telephony/MdlogService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/MdlogService$MdlogTimerTask;->this$0:Lcom/qualcomm/qti/internal/telephony/MdlogService;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->-wrap2(Lcom/qualcomm/qti/internal/telephony/MdlogService;)V

    .line 68
    return-void
.end method
