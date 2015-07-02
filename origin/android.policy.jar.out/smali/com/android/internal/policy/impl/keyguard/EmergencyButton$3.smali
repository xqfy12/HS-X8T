.class Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;
.super Landroid/telephony/PhoneStateListener;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #setter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$402(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$500(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 170
    .local v0, phoneState:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    #calls: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$200(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 173
    :cond_0
    return-void
.end method
