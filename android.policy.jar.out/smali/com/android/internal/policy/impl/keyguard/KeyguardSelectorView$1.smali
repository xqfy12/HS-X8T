.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;
.super Ljava/lang/Object;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->doTransition(Landroid/view/View;F)V

    .line 140
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 144
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->doTransition(Landroid/view/View;F)V

    .line 135
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 17
    .parameter "v"
    .parameter "target"

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v16

    .line 65
    .local v16, resId:I
    sparse-switch v16, :sswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 67
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "search"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v7, -0x2

    invoke-virtual {v1, v3, v5, v7}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v2

    .line 70
    .local v2, assistIntent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 71
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 75
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    const-wide/16 v11, 0x0

    invoke-interface {v1, v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 73
    :cond_0
    const-string v1, "SecuritySelectorView"

    const-string v3, "Failed to get intent for assist activity"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    .end local v2           #assistIntent:Landroid/content/Intent;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    const-wide/16 v11, 0x0

    invoke-interface {v1, v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 87
    :sswitch_2
    const-string v1, "SecuritySelectorView"

    const-string v3, "Start unlock screen."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    const-wide/16 v11, 0x0

    invoke-interface {v1, v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_0

    .line 92
    :sswitch_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v4, msgIntent:Landroid/content/Intent;
    const/4 v15, 0x0

    .line 94
    .local v15, isconvt:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "keyguard_enter_mms_type"

    const/4 v5, 0x1

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 95
    const/4 v1, 0x1

    if-ne v15, v1, :cond_1

    .line 96
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v5, "com.android.mms.ui.ConversationList"

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    const-string v1, "SecuritySelectorView"

    const-string v3, "msgIntent,isconvt == 1"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_2
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 99
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v5, "com.android.mms.ui.MailBoxMessageList"

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    const-string v1, "SecuritySelectorView"

    const-string v3, "msgIntent,isconvt == 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 109
    .end local v4           #msgIntent:Landroid/content/Intent;
    .end local v15           #isconvt:I
    :sswitch_4
    new-instance v6, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v6, browerIntent:Landroid/content/Intent;
    const-string v1, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "hmct"

    const/4 v3, 0x1

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 113
    const-string v1, "SecuritySelectorView"

    const-string v3, "Start open browser."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 117
    .end local v6           #browerIntent:Landroid/content/Intent;
    :sswitch_5
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v8, contactIntent:Landroid/content/Intent;
    const-string v1, "com.android.contacts"

    const-string v3, "com.android.contacts.activities.PeopleActivity"

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 120
    const-string v1, "SecuritySelectorView"

    const-string v3, "Start unlock screen and open contacts."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 123
    .end local v8           #contactIntent:Landroid/content/Intent;
    :sswitch_6
    const-string v1, "SecuritySelectorView"

    const-string v3, "Start unlock screen and open call."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v10, callIntent:Landroid/content/Intent;
    const-string v1, "com.android.contacts"

    const-string v3, "com.android.contacts.DialtactsContactsEntryActivityForDialpad"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x10802f0 -> :sswitch_0
        0x1080344 -> :sswitch_4
        0x1080347 -> :sswitch_6
        0x108034a -> :sswitch_1
        0x108034d -> :sswitch_5
        0x108035e -> :sswitch_3
        0x108036e -> :sswitch_2
        0x1080371 -> :sswitch_2
    .end sparse-switch
.end method
