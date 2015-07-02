.class Lcom/android/internal/app/PrimaryStorageAlertActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PrimaryStorageAlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PrimaryStorageAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PrimaryStorageAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$1;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$1;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    #getter for: Lcom/android/internal/app/PrimaryStorageAlertActivity;->DEBUG:Z
    invoke-static {v1}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->access$000(Lcom/android/internal/app/PrimaryStorageAlertActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PrimaryStorageAlertActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$1;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->finish()V

    .line 79
    return-void
.end method
