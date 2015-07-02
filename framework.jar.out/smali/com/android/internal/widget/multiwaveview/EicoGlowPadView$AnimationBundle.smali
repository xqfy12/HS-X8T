.class Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/widget/multiwaveview/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 145
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 147
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->clear()V

    .line 150
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspend"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->mSuspended:Z

    .line 163
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 134
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 137
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 139
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 154
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 155
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 156
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$AnimationBundle;->clear()V

    .line 159
    return-void
.end method
