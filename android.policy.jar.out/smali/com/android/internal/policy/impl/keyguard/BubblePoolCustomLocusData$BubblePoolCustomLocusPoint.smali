.class public Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;
.super Ljava/lang/Object;
.source "BubblePoolCustomLocusData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BubblePoolCustomLocusPoint"
.end annotation


# instance fields
.field public mBubbleValue:Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;

.field public mTimeWeigth:I


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v0, -0x4080

    .line 233
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FFFF)V

    .line 234
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "scale"
    .parameter "alpha"

    .prologue
    .line 237
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FFFFI)V

    .line 238
    return-void
.end method

.method public constructor <init>(FFFFI)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "scale"
    .parameter "alpha"
    .parameter "timeWeigth"

    .prologue
    .line 245
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;

    .line 247
    iput p5, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mTimeWeigth:I

    .line 248
    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 6
    .parameter "scale"
    .parameter "alpha"
    .parameter "timeWeigth"

    .prologue
    const/4 v1, 0x0

    .line 241
    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FFFFI)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 2
    .parameter "point"

    .prologue
    .line 251
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FF)V

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 2
    .parameter "point"

    .prologue
    .line 255
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FF)V

    .line 256
    return-void
.end method
