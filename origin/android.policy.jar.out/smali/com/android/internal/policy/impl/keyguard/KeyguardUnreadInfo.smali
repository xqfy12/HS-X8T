.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;
.super Landroid/widget/LinearLayout;
.source "KeyguardUnreadInfo.java"


# static fields
.field private static final CONTRACT_COMPOSE_CLASS_NAME:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field private static final CONTRACT_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static final INCOMING_INDICATOR_ON_LOCKSCREEN:Ljava/lang/String; = "incoming_indicator_on_lockscreen"

.field private static final MMS_COMPOSE_CLASS_NAME:Ljava/lang/String; = "com.android.mms.ui.BootActivity"

.field private static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final TAG:Ljava/lang/String; = "KeyguardUnreadInfo"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mMissCallCallImageView:Landroid/widget/ImageView;

.field private mMissCallCallView:Landroid/widget/TextView;

.field private mMissCallNum:I

.field private mSettingsChangeObserver:Landroid/database/ContentObserver;

.field private mUnreadMessageImageView:Landroid/widget/ImageView;

.field private mUnreadMessageView:Landroid/widget/TextView;

.field private mUnreadMsgNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallNum:I

    .line 48
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mUnreadMsgNum:I

    .line 101
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mSettingsChangeObserver:Landroid/database/ContentObserver;

    .line 168
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mClickListener:Landroid/view/View$OnClickListener;

    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->updateMissedCallInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->updateUnreadMessageInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private registerSettingsContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com_android_mms_mtk_unread"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mSettingsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com_android_contacts_hs_unread"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mSettingsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    return-void
.end method

.method private unregisterSettingsContentObserver()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mSettingsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    return-void
.end method

.method private updateMissedCallInfo()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "com_android_contacts_hs_unread"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallNum:I

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "incoming_indicator_on_lockscreen"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 125
    .local v0, isShow:Z
    :goto_0
    const-string v3, "KeyguardUnreadInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The miss call num is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, missCallStr:Ljava/lang/String;
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallNum:I

    const/16 v4, 0x3e7

    if-le v3, v4, :cond_0

    .line 131
    const-string v1, "999+"

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallCallView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallCallImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallCallView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallNum:I

    if-eqz v3, :cond_1

    if-nez v0, :cond_4

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallCallView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallCallImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :cond_2
    :goto_1
    return-void

    .end local v0           #isShow:Z
    .end local v1           #missCallStr:Ljava/lang/String;
    :cond_3
    move v0, v2

    .line 124
    goto :goto_0

    .line 139
    .restart local v0       #isShow:Z
    .restart local v1       #missCallStr:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallCallView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallCallImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateUnreadMessageInfo()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 146
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "com_android_mms_mtk_unread"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 147
    .local v1, mUnreadMsgNum:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "incoming_indicator_on_lockscreen"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_3

    .line 148
    .local v0, isShow:Z
    :goto_0
    const-string v4, "KeyguardUnreadInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The unread message num is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, unreadMsgStr:Ljava/lang/String;
    const/16 v4, 0x3e7

    if-le v1, v4, :cond_0

    .line 154
    const-string v2, "999+"

    .line 156
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mUnreadMessageView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 157
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mUnreadMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    if-eqz v1, :cond_1

    if-nez v0, :cond_4

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mUnreadMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mUnreadMessageImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    :cond_2
    :goto_1
    return-void

    .end local v0           #isShow:Z
    .end local v2           #unreadMsgStr:Ljava/lang/String;
    :cond_3
    move v0, v3

    .line 147
    goto :goto_0

    .line 162
    .restart local v0       #isShow:Z
    .restart local v2       #unreadMsgStr:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mUnreadMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mUnreadMessageImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 88
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->registerSettingsContentObserver()V

    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->updateMissedCallInfo()V

    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->updateUnreadMessageInfo()V

    .line 91
    const-string v0, "KeyguardUnreadInfo"

    const-string v1, "onAttachedToWindow() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->unregisterSettingsContentObserver()V

    .line 98
    const-string v0, "KeyguardUnreadInfo"

    const-string v1, "onDetachedFromWindow() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "KeyguardUnreadInfo"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 76
    const v0, 0x10202fb

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mUnreadMessageView:Landroid/widget/TextView;

    .line 77
    const v0, 0x10202fd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallCallView:Landroid/widget/TextView;

    .line 79
    const v0, 0x10202fa

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mUnreadMessageImageView:Landroid/widget/ImageView;

    .line 80
    const v0, 0x10202fc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->mMissCallCallImageView:Landroid/widget/ImageView;

    .line 83
    return-void
.end method
