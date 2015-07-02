.class Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo$2;
.super Ljava/lang/Object;
.source "KeyguardUnreadInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 171
    .local v1, id:I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x3400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    const v3, 0x10202fb

    if-ne v1, v3, :cond_1

    .line 175
    const-string v3, "KeyguardUnreadInfo"

    const-string v4, "Show mms for unread message."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.ui.BootActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 184
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V

    .line 185
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :goto_1
    return-void

    .line 178
    :cond_1
    const v3, 0x10202fd

    if-ne v1, v3, :cond_0

    .line 179
    const-string v3, "KeyguardUnreadInfo"

    const-string v4, "Show contracts for miss call."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.contacts"

    const-string v5, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "KeyguardUnreadInfo"

    const-string v4, "can\'t dismiss keyguard on launch"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "KeyguardUnreadInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found for intent + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
