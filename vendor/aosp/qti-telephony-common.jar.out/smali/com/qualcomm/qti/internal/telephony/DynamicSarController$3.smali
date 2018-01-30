.class Lcom/qualcomm/qti/internal/telephony/DynamicSarController$3;
.super Landroid/telephony/PhoneStateListener;
.source "DynamicSarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$3;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string/jumbo v0, "DynamicSarController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhoneStateListener.onCallStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$3;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->-wrap1(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;II)V

    .line 89
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 96
    const-string/jumbo v0, "DynamicSarController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhoneStateListener.onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$3;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    const/16 v1, 0x80

    invoke-static {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->-wrap1(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;II)V

    .line 95
    return-void
.end method
