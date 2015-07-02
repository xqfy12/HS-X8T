.class Lcom/android/server/ShutdownActivity$1;
.super Ljava/lang/Thread;
.source "ShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShutdownActivity;


# direct methods
.method constructor <init>(Lcom/android/server/ShutdownActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 52
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 55
    .local v1, pm:Landroid/os/IPowerManager;
    const-string v2, "ro.bootmode"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "charger"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 57
    .local v0, isChargeMode:Z
    if-eqz v0, :cond_1

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    #getter for: Lcom/android/server/ShutdownActivity;->mReboot:Z
    invoke-static {v2}, Lcom/android/server/ShutdownActivity;->access$000(Lcom/android/server/ShutdownActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    goto :goto_0

    .line 70
    :catch_0
    move-exception v2

    goto :goto_0

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    #getter for: Lcom/android/server/ShutdownActivity;->mReboot:Z
    invoke-static {v2}, Lcom/android/server/ShutdownActivity;->access$000(Lcom/android/server/ShutdownActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    iget-object v2, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    #getter for: Lcom/android/server/ShutdownActivity;->mConfirm:Z
    invoke-static {v2}, Lcom/android/server/ShutdownActivity;->access$100(Lcom/android/server/ShutdownActivity;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 71
    :catch_1
    move-exception v2

    goto :goto_0

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    #getter for: Lcom/android/server/ShutdownActivity;->mConfirm:Z
    invoke-static {v2}, Lcom/android/server/ShutdownActivity;->access$100(Lcom/android/server/ShutdownActivity;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0
.end method
