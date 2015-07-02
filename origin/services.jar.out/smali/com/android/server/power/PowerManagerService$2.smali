.class Lcom/android/server/power/PowerManagerService$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayPowerController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProximityNegative()V
    .locals 7

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1778
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 1779
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$876(Lcom/android/server/power/PowerManagerService;I)I

    .line 1781
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->hasButtonBacklight:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mKeyBacklightService:Lcom/hmct/common/power/IKeyBackLightAdjust;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)Lcom/hmct/common/power/IKeyBackLightAdjust;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hmct/common/power/IKeyBackLightAdjust;->setProximityPositive(Z)V

    .line 1784
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    #calls: Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 1786
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)V

    .line 1787
    monitor-exit v6

    .line 1788
    return-void

    .line 1787
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProximityPositive()V
    .locals 3

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1765
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 1767
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->hasButtonBacklight:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mKeyBacklightService:Lcom/hmct/common/power/IKeyBackLightAdjust;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)Lcom/hmct/common/power/IKeyBackLightAdjust;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/hmct/common/power/IKeyBackLightAdjust;->setProximityPositive(Z)V

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$876(Lcom/android/server/power/PowerManagerService;I)I

    .line 1771
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)V

    .line 1772
    monitor-exit v1

    .line 1773
    return-void

    .line 1772
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStateChanged()V
    .locals 3

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1757
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$876(Lcom/android/server/power/PowerManagerService;I)I

    .line 1758
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)V

    .line 1759
    monitor-exit v1

    .line 1760
    return-void

    .line 1759
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
