.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6$1;->val$success:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mCheckInProgress:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Z)Z

    .line 294
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x1040565

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method
