.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final ANR_ADN_RECORD_IDENTIFIER:I = 0x10

.field public static final ANR_ADN_SFI:I = 0xf

.field public static final ANR_BCD_NUMBER_LENGTH:I = 0x1

.field public static final ANR_CAPABILITY_ID:I = 0xd

.field public static final ANR_DIALING_NUMBER_END:I = 0xc

.field public static final ANR_DIALING_NUMBER_START:I = 0x3

.field public static final ANR_EXTENSION_ID:I = 0xe

.field public static final ANR_TON_AND_NPI:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field public static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field public static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecord"

.field public static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field public static final MAX_GROUP_SIZE_BYTES:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field private static TAG:Ljava/lang/String;


# instance fields
.field public anrEfids:[I

.field public anrFileTypes:[I

.field public anrIndexes:[I

.field public anrs:[Ljava/lang/String;

.field public emailEfids:[I

.field public emailFileTypes:[I

.field public emailIndexes:[I

.field extRecordAnr0:I

.field public grpEfid:I

.field public grps:[B

.field mAlphaTag:Ljava/lang/String;

.field mEfid:I

.field public mEmails:[Ljava/lang/String;

.field mExtRecord:I

.field mNumber:Ljava/lang/String;

.field public mRecordNumber:I

.field public sneEfids:[I

.field public sneFileTypes:[I

.field public sneIndexes:[I

.field public snes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "AdnRecord"

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->TAG:Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/16 v1, 0xff

    const/4 v0, 0x0

    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 44
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    .line 193
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 194
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 195
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 196
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    .line 199
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 219
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 74
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    .line 220
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 221
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 222
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 223
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 224
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 225
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I[I[I)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "emailEfids"
    .parameter "emailIndexes"
    .parameter "emailFileTypes"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 74
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    .line 262
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 263
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 264
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 265
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 266
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 267
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailEfids:[I

    .line 268
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailIndexes:[I

    .line 269
    iput-object p8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailFileTypes:[I

    .line 270
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 74
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    .line 229
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 230
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 231
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 232
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 233
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 234
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    .line 235
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"
    .parameter "grps"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 238
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 74
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    .line 239
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 240
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 241
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 242
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 243
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 244
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    .line 245
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grps:[B

    .line 246
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I[I[I[I)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"
    .parameter "emailEfids"
    .parameter "anrEfids"
    .parameter "emailIndexes"
    .parameter "anrIndexes"
    .parameter "emailFileTypes"
    .parameter "anrFileTypes"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 274
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 74
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    .line 275
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 276
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 277
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 278
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 279
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 280
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    .line 281
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailEfids:[I

    .line 282
    iput-object p8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrEfids:[I

    .line 283
    iput-object p9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailIndexes:[I

    .line 284
    iput-object p10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrIndexes:[I

    .line 285
    iput-object p11, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailFileTypes:[I

    .line 286
    iput-object p12, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrFileTypes:[I

    .line 287
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I[I[I[I[BI)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"
    .parameter "emailEfids"
    .parameter "anrEfids"
    .parameter "emailIndexes"
    .parameter "anrIndexes"
    .parameter "emailFileTypes"
    .parameter "anrFileTypes"
    .parameter "grps"
    .parameter "grpEfid"

    .prologue
    .line 291
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 44
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 74
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    .line 292
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 293
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 294
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 295
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 296
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 297
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    .line 298
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailEfids:[I

    .line 299
    iput-object p8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrEfids:[I

    .line 300
    iput-object p9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailIndexes:[I

    .line 301
    iput-object p10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrIndexes:[I

    .line 302
    iput-object p11, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailFileTypes:[I

    .line 303
    iput-object p12, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrFileTypes:[I

    .line 304
    iput-object p13, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grps:[B

    .line 305
    iput p14, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpEfid:I

    .line 306
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"
    .parameter "snes"
    .parameter "grps"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 249
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 74
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    .line 250
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 251
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 252
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 253
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 254
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 255
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    .line 256
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    .line 257
    iput-object p8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grps:[B

    .line 258
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I[I[I[I[I[I[I[BI)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"
    .parameter "snes"
    .parameter "emailEfids"
    .parameter "anrEfids"
    .parameter "sneEfids"
    .parameter "emailIndexes"
    .parameter "anrIndexes"
    .parameter "sneIndexes"
    .parameter "emailFileTypes"
    .parameter "anrFileTypes"
    .parameter "sneFileTypes"
    .parameter "grps"
    .parameter "grpEfid"

    .prologue
    .line 311
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 44
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 74
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    .line 312
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 313
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 314
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 315
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 316
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 317
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    .line 318
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    .line 319
    iput-object p8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailEfids:[I

    .line 320
    iput-object p9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrEfids:[I

    .line 321
    iput-object p10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneEfids:[I

    .line 322
    iput-object p11, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailIndexes:[I

    .line 323
    iput-object p12, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrIndexes:[I

    .line 324
    iput-object p13, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneIndexes:[I

    .line 325
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailFileTypes:[I

    .line 326
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrFileTypes:[I

    .line 327
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneFileTypes:[I

    .line 328
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grps:[B

    .line 329
    move/from16 v0, p18

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpEfid:I

    .line 330
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 74
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    .line 183
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 184
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 185
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 189
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 202
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"

    .prologue
    const/4 v1, 0x0

    .line 206
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V
    .locals 8
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"
    .parameter "grps"

    .prologue
    const/4 v1, 0x0

    .line 211
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V
    .locals 9
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrs"
    .parameter "snes"
    .parameter "grps"

    .prologue
    const/4 v1, 0x0

    .line 216
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V

    .line 217
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 180
    return-void
.end method

.method static bubblesort([B)[B
    .locals 5
    .parameter "a"

    .prologue
    .line 587
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 588
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 589
    aget-byte v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    if-le v3, v4, :cond_0

    .line 590
    aget-byte v2, p0, v1

    .line 591
    .local v2, temp:B
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, p0, v1

    .line 592
    add-int/lit8 v3, v1, 0x1

    aput-byte v2, p0, v3

    .line 588
    .end local v2           #temp:B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 587
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    .end local v1           #j:I
    :cond_2
    return-object p0
.end method

.method private byteArrayCompareNullEqualsEmpty([B[B)Z
    .locals 5
    .parameter "bytes1"
    .parameter "bytes2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isbyteArrayEmpty([B)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isbyteArrayEmpty([B)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isbyteArrayEmpty([B)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isbyteArrayEmpty([B)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move v1, v2

    .line 582
    :cond_2
    :goto_0
    return v1

    .line 568
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isbyteArrayEmpty([B)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isbyteArrayEmpty([B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 572
    :cond_4
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 573
    goto :goto_0

    .line 575
    :cond_5
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->bubblesort([B)[B

    move-result-object p1

    .line 576
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->bubblesort([B)[B

    move-result-object p2

    .line 577
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 578
    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->byteCompareNullEqualsEmpty(BB)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 579
    goto :goto_0

    .line 577
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static byteCompareNullEqualsEmpty(BB)Z
    .locals 1
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 556
    if-ne p0, p1, :cond_0

    .line 557
    const/4 v0, 0x1

    .line 559
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gbEncoding(Ljava/lang/String;)[B
    .locals 6
    .parameter "gbString"

    .prologue
    .line 773
    const/4 v2, 0x0

    .line 776
    .local v2, result:[B
    :try_start_0
    const-string v3, "utf-16BE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 777
    .local v0, byteTag:[B
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 778
    const/4 v3, 0x0

    const/16 v4, -0x80

    aput-byte v4, v2, v3

    .line 779
    const/4 v3, 0x0

    const/4 v4, 0x1

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    .end local v0           #byteTag:[B
    :goto_0
    return-object v2

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v3, "AdnRecord"

    const-string v4, "alphaTag convert byte exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 7
    .parameter "record"

    .prologue
    const/4 v6, 0x0

    .line 824
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 827
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 829
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 831
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 833
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 883
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 844
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 847
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v4, 0x2c

    const/16 v5, 0x50

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 848
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v4, 0x3b

    const/16 v5, 0x54

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 849
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v4, 0x4e

    const/16 v5, 0x57

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 852
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 854
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 855
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailEfids:[I

    .line 856
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailIndexes:[I

    .line 857
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailFileTypes:[I

    .line 858
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    .line 859
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrEfids:[I

    .line 860
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrIndexes:[I

    .line 861
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrFileTypes:[I

    .line 862
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    .line 863
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneEfids:[I

    .line 864
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneIndexes:[I

    .line 865
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneFileTypes:[I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 867
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "AdnRecord"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 869
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 870
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 871
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailEfids:[I

    .line 872
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailIndexes:[I

    .line 873
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailFileTypes:[I

    .line 874
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    .line 875
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrEfids:[I

    .line 876
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrIndexes:[I

    .line 877
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrFileTypes:[I

    .line 878
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    .line 879
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneEfids:[I

    .line 880
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneIndexes:[I

    .line 881
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneFileTypes:[I

    goto/16 :goto_0
.end method

.method private stringArrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 13
    .parameter "ss1"
    .parameter "ss2"

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isStringArrayEmpty([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isStringArrayEmpty([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isStringArrayEmpty([Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isStringArrayEmpty([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 524
    :cond_1
    const/4 v11, 0x0

    .line 552
    :goto_0
    return v11

    .line 527
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isStringArrayEmpty([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isStringArrayEmpty([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 528
    const/4 v11, 0x1

    goto :goto_0

    .line 530
    :cond_3
    array-length v11, p1

    new-array v9, v11, [Ljava/lang/String;

    .line 531
    .local v9, ssc1:[Ljava/lang/String;
    array-length v11, p2

    new-array v10, v11, [Ljava/lang/String;

    .line 532
    .local v10, ssc2:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 533
    .local v3, index1:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v4, v3

    .end local v3           #index1:I
    .local v4, index1:I
    :goto_1
    if-ge v2, v7, :cond_4

    aget-object v8, v0, v2

    .line 534
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 535
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index1:I
    .restart local v3       #index1:I
    aput-object v8, v9, v4

    .line 533
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #index1:I
    .restart local v4       #index1:I
    goto :goto_1

    .line 538
    .end local v8           #s:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    .line 539
    .local v5, index2:I
    move-object v0, p2

    array-length v7, v0

    const/4 v2, 0x0

    move v6, v5

    .end local v5           #index2:I
    .local v6, index2:I
    :goto_3
    if-ge v2, v7, :cond_5

    aget-object v8, v0, v2

    .line 540
    .restart local v8       #s:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 541
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index2:I
    .restart local v5       #index2:I
    aput-object v8, v10, v6

    .line 539
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5           #index2:I
    .restart local v6       #index2:I
    goto :goto_3

    .line 544
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    if-eq v4, v6, :cond_6

    .line 545
    const/4 v11, 0x0

    goto :goto_0

    .line 547
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v4, :cond_8

    .line 548
    aget-object v11, v9, v1

    aget-object v12, v10, v1

    invoke-static {v11, v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 549
    const/4 v11, 0x0

    goto :goto_0

    .line 547
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 552
    :cond_8
    const/4 v11, 0x1

    goto :goto_0

    .end local v1           #i:I
    .restart local v8       #s:Ljava/lang/String;
    :cond_9
    move v5, v6

    .end local v6           #index2:I
    .restart local v5       #index2:I
    goto :goto_4

    .end local v5           #index2:I
    :cond_a
    move v3, v4

    .end local v4           #index1:I
    .restart local v3       #index1:I
    goto :goto_2
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 507
    if-ne p0, p1, :cond_0

    .line 508
    const/4 v0, 0x1

    .line 518
    :goto_0
    return v0

    .line 510
    :cond_0
    if-nez p0, :cond_1

    .line 511
    const-string p0, ""

    .line 513
    :cond_1
    if-nez p1, :cond_2

    .line 514
    const-string p1, ""

    .line 516
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 791
    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 799
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 12
    .parameter "recordSize"

    .prologue
    const/16 v11, 0x3b

    const/16 v7, 0x2c

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 684
    add-int/lit8 v3, p1, -0xe

    .line 687
    .local v3, footerOffset:I
    new-array v0, p1, [B

    .line 688
    .local v0, adnString:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 689
    aput-byte v9, v0, v4

    .line 688
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 692
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_2

    .line 693
    const-string v5, "AdnRecord"

    const-string v6, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x0

    .line 744
    .end local v0           #adnString:[B
    .end local v3           #footerOffset:I
    :cond_1
    :goto_1
    return-object v0

    .line 696
    .restart local v0       #adnString:[B
    .restart local v3       #footerOffset:I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_3

    .line 697
    const-string v5, "AdnRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildAdnString] Max length of tag is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v0, 0x0

    goto :goto_1

    .line 702
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 703
    const-string v5, "AdnRecord"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-array v1, v10, [B

    .line 705
    .local v1, bcdNumber:[B
    aput-byte v9, v1, v8

    .line 706
    add-int/lit8 v5, v3, 0x0

    aput-byte v9, v0, v5

    .line 722
    :goto_2
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    invoke-static {v1, v8, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 725
    add-int/lit8 v5, v3, 0xc

    aput-byte v9, v0, v5

    .line 727
    add-int/lit8 v5, v3, 0xd

    aput-byte v9, v0, v5

    .line 730
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 731
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_7

    .line 732
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->gbEncoding(Ljava/lang/String;)[B

    move-result-object v2

    .line 733
    .local v2, byteTag:[B
    array-length v5, v2

    if-le v5, v3, :cond_6

    .line 734
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v10, :cond_5

    .end local v3           #footerOffset:I
    :goto_3
    invoke-static {v2, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 710
    .end local v1           #bcdNumber:[B
    .end local v2           #byteTag:[B
    .restart local v3       #footerOffset:I
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v6, 0x50

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 711
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v6, 0x70

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 712
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v6, 0x74

    invoke-virtual {v5, v6, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 713
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v6, 0x54

    invoke-virtual {v5, v6, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 714
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v6, 0x77

    const/16 v7, 0x4e

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 715
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v6, 0x57

    const/16 v7, 0x4e

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 717
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 718
    .restart local v1       #bcdNumber:[B
    add-int/lit8 v5, v3, 0x0

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto/16 :goto_2

    .line 734
    .restart local v2       #byteTag:[B
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 736
    :cond_6
    array-length v5, v2

    invoke-static {v2, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 739
    .end local v2           #byteTag:[B
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .line 740
    .restart local v2       #byteTag:[B
    array-length v5, v2

    invoke-static {v2, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1
.end method

.method public buildAdnString(II)[B
    .locals 4
    .parameter "recordSize"
    .parameter "adnExt1Id"

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    move-result-object v0

    .line 639
    .local v0, adnString:[B
    add-int/lit8 v1, p1, -0xe

    .line 641
    .local v1, footerOffset:I
    add-int/lit8 v2, v1, 0xd

    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 642
    return-object v0
.end method

.method public buildAnrString(ILjava/lang/String;II)[B
    .locals 6
    .parameter "recordSize"
    .parameter "anr"
    .parameter "anrExt1Id"
    .parameter "adnIndex"

    .prologue
    const/4 v5, 0x0

    .line 653
    new-array v0, p1, [B

    .line 654
    .local v0, anrString:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 655
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 669
    :cond_1
    :goto_1
    return-object v0

    .line 660
    :cond_2
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 662
    .local v1, bcdAnr:[B
    const/4 v3, 0x2

    array-length v4, v1

    invoke-static {v1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 664
    aput-byte v5, v0, v5

    .line 665
    const/4 v3, 0x1

    array-length v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 666
    const/16 v3, 0x11

    if-lt p1, v3, :cond_1

    .line 667
    const/16 v3, 0x10

    int-to-byte v4, p4

    aput-byte v4, v0, v3

    goto :goto_1
.end method

.method public buildAnrString(ILjava/lang/String;III)[B
    .locals 3
    .parameter "recordSize"
    .parameter "anr"
    .parameter "anrExt1Id"
    .parameter "adnIndex"
    .parameter "extRecordAnr0"

    .prologue
    .line 647
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAnrString(ILjava/lang/String;II)[B

    move-result-object v0

    .line 648
    .local v0, anrString:[B
    const/16 v1, 0xe

    and-int/lit16 v2, p5, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 649
    return-object v0
.end method

.method public buildSneOrGsdString(ILjava/lang/String;)[B
    .locals 6
    .parameter "recordSize"
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    .line 751
    new-array v2, p1, [B

    .line 752
    .local v2, retString:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 753
    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 752
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 756
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 757
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->gbEncoding(Ljava/lang/String;)[B

    move-result-object v0

    .line 758
    .local v0, byteStr:[B
    array-length v3, v0

    if-le v3, p1, :cond_3

    .line 759
    rem-int/lit8 v3, p1, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .end local p1
    :goto_1
    invoke-static {v0, v5, v2, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    .end local v0           #byteStr:[B
    :cond_1
    :goto_2
    return-object v2

    .line 759
    .restart local v0       #byteStr:[B
    .restart local p1
    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 762
    :cond_3
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 765
    .end local v0           #byteStr:[B
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 766
    .restart local v0       #byteStr:[B
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrEfids()[I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrEfids:[I

    return-object v0
.end method

.method public getAnrNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnrs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    return-object v0
.end method

.method public getEmailEfids()[I
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailEfids:[I

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtRecordAnr0()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    return v0
.end method

.method public getGrpEfid()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpEfid:I

    return v0
.end method

.method public getGrps()[B
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grps:[B

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSneEfids()[I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneEfids:[I

    return-object v0
.end method

.method public getSnes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 499
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtendedRecordAnr0()Z
    .locals 2

    .prologue
    .line 503
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isStringArrayEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isStringArrayEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isStringArrayEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringArrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringArrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringArrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grps:[B

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->grps:[B

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->byteArrayCompareNullEqualsEmpty([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStringArrayEmpty([Ljava/lang/String;)Z
    .locals 6
    .parameter "strs"

    .prologue
    const/4 v4, 0x1

    .line 474
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v4

    .line 477
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 478
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 479
    const/4 v4, 0x0

    goto :goto_0

    .line 477
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isbyteArrayEmpty([B)Z
    .locals 1
    .parameter "bytes"

    .prologue
    .line 486
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 487
    :cond_0
    const/4 v0, 0x1

    .line 489
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnrEfids([I)V
    .locals 0
    .parameter "anrEfids"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrEfids:[I

    .line 393
    return-void
.end method

.method public setAnrFileTypes([I)V
    .locals 0
    .parameter "anrFileTypes"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrFileTypes:[I

    .line 421
    return-void
.end method

.method public setAnrIndexes([I)V
    .locals 0
    .parameter "anrIndexes"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrIndexes:[I

    .line 405
    return-void
.end method

.method public setAnrs([Ljava/lang/String;)V
    .locals 0
    .parameter "anrs"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setEmailEfids([I)V
    .locals 0
    .parameter "emailEfids"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailEfids:[I

    .line 389
    return-void
.end method

.method public setEmailFileTypes([I)V
    .locals 0
    .parameter "emailFileTypes"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailFileTypes:[I

    .line 417
    return-void
.end method

.method public setEmailIndexes([I)V
    .locals 0
    .parameter "emailIndexes"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailIndexes:[I

    .line 401
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setExtRecordAnr0(I)V
    .locals 0
    .parameter "extRecordAnr0"

    .prologue
    .line 412
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecordAnr0:I

    .line 413
    return-void
.end method

.method public setGrpEfid(I)V
    .locals 0
    .parameter "grpEfid"

    .prologue
    .line 432
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpEfid:I

    .line 433
    return-void
.end method

.method public setGrps([B)V
    .locals 0
    .parameter "grps"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grps:[B

    .line 429
    return-void
.end method

.method public setSneEfids([I)V
    .locals 0
    .parameter "sneEfids"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneEfids:[I

    .line 397
    return-void
.end method

.method public setSneFileTypes([I)V
    .locals 0
    .parameter "sneFileTypes"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneFileTypes:[I

    .line 425
    return-void
.end method

.method public setSneIndexes([I)V
    .locals 0
    .parameter "sneIndexes"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneIndexes:[I

    .line 409
    return-void
.end method

.method public setSnes([Ljava/lang/String;)V
    .locals 0
    .parameter "snes"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    .line 385
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "ADN Record: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    .local v6, output:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alphaTag = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "],"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "number = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "],"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 442
    .local v2, email:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "emails = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "],"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 445
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #email:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    const-string v8, "emails is null,"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 449
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v0, v1, v4

    .line 450
    .local v0, anr:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "anrs = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "],"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 453
    .end local v0           #anr:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    const-string v8, "anrs is null,"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 456
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v7, v1, v4

    .line 457
    .local v7, sne:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "snes = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "],"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 460
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #sne:Ljava/lang/String;
    :cond_4
    const-string v8, "snes is null,"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grps:[B

    if-eqz v8, :cond_6

    .line 463
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grps:[B

    .local v1, arr$:[B
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v5, :cond_7

    aget-byte v3, v1, v4

    .line 464
    .local v3, grp:B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "grps = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "],"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 467
    .end local v1           #arr$:[B
    .end local v3           #grp:B
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_6
    const-string v8, "grps is null,"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 617
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailEfids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailIndexes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailFileTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrEfids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrIndexes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrFileTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->snes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneEfids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneIndexes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sneFileTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grps:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 634
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    return-void
.end method
