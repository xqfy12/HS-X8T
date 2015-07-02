.class public abstract Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;
.super Ljava/lang/Object;
.source "BubblePoolConfig.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/BubblePoolConfigInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/widget/multiwaveview/BubblePoolConfigInterface",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final CONFIG_TYPE_CUSTOM_LOCUS:I = 0x2

.field public static final CONFIG_TYPE_CUSTOM_PARAM:I = 0x1

.field public static final CONFIG_TYPE_RANDOM:I = 0x0

.field public static final IS_LOOP:I = -0x1

.field public static final NO_SUPPORT:I = -0x1


# instance fields
.field protected mColorChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->mColorChanged:Z

    return-void
.end method


# virtual methods
.method public getBubbleDurationMax()I
    .locals 1

    .prologue
    .line 79
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getBubbleDurationMin()I
    .locals 1

    .prologue
    .line 74
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getBubbleEndAlphaMax()F
    .locals 1

    .prologue
    .line 134
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public getBubbleEndAlphaMin()F
    .locals 1

    .prologue
    .line 129
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public getBubbleEndScaleMax()F
    .locals 1

    .prologue
    .line 114
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public getBubbleEndScaleMin()F
    .locals 1

    .prologue
    .line 109
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public getBubbleMin()I
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getBubbleStartAlphaMax()F
    .locals 1

    .prologue
    .line 124
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public getBubbleStartAlphaMin()F
    .locals 1

    .prologue
    .line 119
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public getBubbleStartDelayMax()I
    .locals 1

    .prologue
    .line 89
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getBubbleStartDelayMin()I
    .locals 1

    .prologue
    .line 84
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getBubbleStartScaleMax()F
    .locals 1

    .prologue
    .line 104
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public getBubbleStartScaleMin()F
    .locals 1

    .prologue
    .line 99
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public getCycleCountMax()F
    .locals 1

    .prologue
    .line 154
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public getMarginMax()F
    .locals 1

    .prologue
    .line 149
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public getRunNumber()I
    .locals 1

    .prologue
    .line 164
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getSpacingTime()I
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getStartXRangeMax()F
    .locals 1

    .prologue
    .line 139
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public getStartYRangeMax()F
    .locals 1

    .prologue
    .line 144
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    const/high16 v0, -0x4080

    return v0
.end method

.method public isColorChanged()Z
    .locals 1

    .prologue
    .line 159
    .local p0, this:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<TT;>;"
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->mColorChanged:Z

    return v0
.end method
