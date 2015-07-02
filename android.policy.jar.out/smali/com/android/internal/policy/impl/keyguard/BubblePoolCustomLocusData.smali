.class public Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData;
.super Ljava/lang/Object;
.source "BubblePoolCustomLocusData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;,
        Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;
    }
.end annotation


# static fields
.field private static final BASE_SCALE:F = 1.0f

.field private static final CURVA_SCALE:F = 1.0f

.field private static final DEFAULT_LOCUS_1:Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus; = null

.field private static final DEFAULT_LOCUS_2:Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus; = null

.field private static final DEFAULT_LOCUS_3:Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus; = null

.field public static final DEFAULT_LOCUS_LIST:[Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus; = null

.field public static final NONE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 259
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;

    const/4 v0, 0x4

    new-array v8, v0, [Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const/4 v6, 0x0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const/high16 v1, 0x42c8

    const/high16 v2, 0x42c8

    const v3, 0x3dcccccd

    const v4, 0x3dcccccd

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FFFFI)V

    aput-object v0, v8, v6

    const/4 v6, 0x1

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const/high16 v1, 0x4307

    const/high16 v2, 0x436a

    const/high16 v3, 0x3f00

    const v4, 0x3f4ccccd

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FFFFI)V

    aput-object v0, v8, v6

    const/4 v6, 0x2

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const v1, 0x43a68000

    const/high16 v2, 0x4316

    const v3, 0x3dcccccd

    const v4, 0x3dcccccd

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FFFFI)V

    aput-object v0, v8, v6

    const/4 v6, 0x3

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const/high16 v1, 0x42a0

    const/high16 v2, 0x43c8

    const v3, 0x3f19999a

    const/high16 v4, 0x3f00

    const/16 v5, 0x9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FFFFI)V

    aput-object v0, v8, v6

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;-><init>([Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData;->DEFAULT_LOCUS_1:Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;

    .line 267
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;

    const/high16 v1, 0x42c8

    const/high16 v2, 0x4348

    const/high16 v3, 0x42a0

    const/high16 v4, 0x4100

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/SpiralCurve;->makeSpiralCurvePoint(FFFFI)[Landroid/graphics/PointF;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const v3, 0x3e4ccccd

    const v4, 0x3dcccccd

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FFI)V

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const/high16 v4, 0x3f00

    const v5, 0x3f4ccccd

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FFI)V

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;-><init>([Landroid/graphics/PointF;Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData;->DEFAULT_LOCUS_2:Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;

    .line 273
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x42c8

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x4348

    const/high16 v5, 0x42c8

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x437a

    const/high16 v5, 0x4396

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x4248

    const/high16 v5, 0x4348

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x42f0

    const/high16 v5, 0x43be

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x4396

    const/high16 v5, 0x43c8

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x43c8

    const/high16 v5, 0x437a

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x43af

    const/high16 v5, 0x4316

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const v3, 0x3e4ccccd

    const v4, 0x3dcccccd

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FFI)V

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const/high16 v4, 0x3f00

    const v5, 0x3f4ccccd

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(FFI)V

    const-wide/16 v4, 0x7d0

    const-wide/16 v6, 0x5dc

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;-><init>([Landroid/graphics/PointF;Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData;->DEFAULT_LOCUS_3:Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;

    .line 288
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData;->DEFAULT_LOCUS_1:Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData;->DEFAULT_LOCUS_2:Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData;->DEFAULT_LOCUS_3:Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData;->DEFAULT_LOCUS_LIST:[Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomLocusData$BubblePoolCustomLocus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 228
    return-void
.end method
