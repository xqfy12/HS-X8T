.class abstract Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$GetSimLockInfo;
.super Ljava/lang/Thread;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "GetSimLockInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$GetSimLockInfo;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 316
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getSimLockInfo()[I

    move-result-object v2

    .line 317
    .local v2, result:[I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 318
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 319
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$GetSimLockInfo;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->h:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v2           #result:[I
    :goto_0
    return-void

    .line 321
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 323
    .restart local v1       #msg:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 324
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$GetSimLockInfo;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimRetryStat:[I
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)[I

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 325
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$GetSimLockInfo;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->h:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
