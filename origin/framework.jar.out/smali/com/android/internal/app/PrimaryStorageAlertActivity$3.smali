.class Lcom/android/internal/app/PrimaryStorageAlertActivity$3;
.super Landroid/os/Handler;
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
    .line 231
    iput-object p1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$3;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 233
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x7c0

    if-ne v2, v3, :cond_1

    .line 235
    const-string/jumbo v2, "persist.sys.hmct.primary.st"

    const-string v3, "internal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, st:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$3;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    #getter for: Lcom/android/internal/app/PrimaryStorageAlertActivity;->DEBUG:Z
    invoke-static {v2}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->access$000(Lcom/android/internal/app/PrimaryStorageAlertActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PrimaryStorageAlertActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ro.hmct.sdcard.change----to reboot primary.storage= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$3;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #st:Ljava/lang/String;
    :cond_1
    return-void
.end method
