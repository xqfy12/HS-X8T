.class public final enum Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;
.super Ljava/lang/Enum;
.source "OperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioAccessTechnology"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

.field public static final enum E_UTRAN:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

.field public static final enum GSM:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

.field public static final enum GSM_COMPACT:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

.field public static final enum GSM_wEGPRS:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

.field public static final enum UTRAN:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

.field public static final enum UTRAN_wHSDPA:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

.field public static final enum UTRAN_wHSDPA_HSUPA:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

.field public static final enum UTRAN_wHSUPA:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    const-string v1, "GSM"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->GSM:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    const-string v1, "GSM_COMPACT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->GSM_COMPACT:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    const-string v1, "UTRAN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->UTRAN:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    const-string v1, "GSM_wEGPRS"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->GSM_wEGPRS:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    const-string v1, "UTRAN_wHSDPA"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->UTRAN_wHSDPA:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    const-string v1, "UTRAN_wHSUPA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->UTRAN_wHSUPA:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    const-string v1, "UTRAN_wHSDPA_HSUPA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->UTRAN_wHSDPA_HSUPA:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    const-string v1, "E_UTRAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->E_UTRAN:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->GSM:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->GSM_COMPACT:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->UTRAN:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->GSM_wEGPRS:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->UTRAN_wHSDPA:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->UTRAN_wHSUPA:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->UTRAN_wHSDPA_HSUPA:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->E_UTRAN:Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;
    .locals 1
    .parameter "name"

    .prologue
    .line 33
    const-class v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/OperatorInfo$RadioAccessTechnology;

    return-object v0
.end method
