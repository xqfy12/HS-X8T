.class public Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;
.super Landroid/widget/RelativeLayout;
.source "BatteryMonitor.java"


# static fields
.field public static final DEBUG:Z

.field public static mBatteryFlagEico:Z


# instance fields
.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private mFlowView:Lcom/android/internal/policy/impl/keyguard/FlowView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mBatteryFlagEico:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mAttached:Z

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->setmContext(Landroid/content/Context;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v8, :cond_4

    .line 76
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, data:Landroid/os/Bundle;
    const-string v5, "KEY_TEXT"

    const-string v6, "0%"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, text:Ljava/lang/String;
    const-string v5, "KEY_LEVEL"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 79
    .local v1, level:F
    const-string v5, "KEY_PLUGGED"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 81
    .local v2, plugged:I
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    if-ne v2, v8, :cond_3

    .line 82
    :cond_0
    sput-boolean v8, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mBatteryFlagEico:Z

    .line 83
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->setVisibility(I)V

    .line 84
    const v5, 0x1020294

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 85
    .local v4, v:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mFlowView:Lcom/android/internal/policy/impl/keyguard/FlowView;

    if-eqz v5, :cond_2

    .line 90
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mFlowView:Lcom/android/internal/policy/impl/keyguard/FlowView;

    invoke-virtual {v5, v1}, Lcom/android/internal/policy/impl/keyguard/FlowView;->updateWavePer(F)V

    .line 102
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #level:F
    .end local v2           #plugged:I
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #v:Landroid/widget/TextView;
    :cond_2
    :goto_0
    const-string v5, "EicoGlowPadView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "batteryMonitor handleMessage, msg.what :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mBatteryFlagEico : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mBatteryFlagEico:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 94
    .restart local v0       #data:Landroid/os/Bundle;
    .restart local v1       #level:F
    .restart local v2       #plugged:I
    .restart local v3       #text:Ljava/lang/String;
    :cond_3
    sput-boolean v7, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mBatteryFlagEico:Z

    .line 95
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->setVisibility(I)V

    goto :goto_0

    .line 98
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #level:F
    .end local v2           #plugged:I
    .end local v3           #text:Ljava/lang/String;
    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 99
    sput-boolean v7, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mBatteryFlagEico:Z

    .line 100
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 133
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mAttached:Z

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mAttached:Z

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->onEnter()V

    .line 138
    :cond_0
    return-void
.end method

.method public onCover()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mFlowView:Lcom/android/internal/policy/impl/keyguard/FlowView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->onDestroy()V

    .line 228
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 117
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mAttached:Z

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mAttached:Z

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->onLeave()V

    .line 121
    :cond_0
    return-void
.end method

.method public onEnter()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mFlowView:Lcom/android/internal/policy/impl/keyguard/FlowView;

    if-nez v0, :cond_0

    .line 196
    const v0, 0x1020293

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/FlowView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mFlowView:Lcom/android/internal/policy/impl/keyguard/FlowView;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mFlowView:Lcom/android/internal/policy/impl/keyguard/FlowView;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mFlowView:Lcom/android/internal/policy/impl/keyguard/FlowView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->animateIn()V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_1
    const-string v0, "Battery"

    const-string v1, "--mFlowView is NULL---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    .local v2, startTime:J
    const v4, 0x1020293

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/FlowView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mFlowView:Lcom/android/internal/policy/impl/keyguard/FlowView;

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080275

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    .local v0, circleDB:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v1, imgView:Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->addView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mFlowView:Lcom/android/internal/policy/impl/keyguard/FlowView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->animateOut()V

    .line 213
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onUncover()V
    .locals 2

    .prologue
    .line 185
    const-string v0, "BatteryPlugin.BatteryMonitor"

    const-string v1, "onUncover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public onUpdate(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 234
    return-void
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->mContext:Landroid/content/Context;

    .line 242
    return-void
.end method
