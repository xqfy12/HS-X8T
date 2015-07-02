.class public abstract Lcom/android/internal/policy/impl/keyguard/GlowPadViewBase;
.super Landroid/view/View;
.source "GlowPadViewBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/GlowPadViewBase$OnTriggerListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/GlowPadViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method


# virtual methods
.method public abstract getResourceIdForTarget(I)I
.end method

.method public abstract getTargetPosition(I)I
.end method

.method public abstract ping()V
.end method

.method public abstract replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
.end method

.method public abstract reset(Z)V
.end method

.method public abstract setEnableTarget(IZ)V
.end method

.method public abstract setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/GlowPadViewBase$OnTriggerListener;)V
.end method

.method public abstract setTouchRecepient(Landroid/view/View;)V
.end method
