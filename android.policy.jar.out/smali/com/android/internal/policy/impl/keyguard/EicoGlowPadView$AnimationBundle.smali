.class Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 151
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 152
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 153
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v0           #anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->clear()V

    .line 156
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspend"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->mSuspended:Z

    .line 169
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 140
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 147
    :cond_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 143
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 144
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 145
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 160
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 161
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 162
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v0           #anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$AnimationBundle;->clear()V

    .line 165
    return-void
.end method