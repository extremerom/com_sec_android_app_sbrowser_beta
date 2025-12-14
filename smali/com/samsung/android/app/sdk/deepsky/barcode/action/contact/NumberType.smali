.class public final enum Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;",
        "",
        "contactPhoneType",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getContactPhoneType",
        "()I",
        "HOME_FAX",
        "WORK_FAX",
        "HOME",
        "WORK",
        "CELL",
        "TEL",
        "VOICE",
        "OTHER",
        "PAGER",
        "CALLBACK",
        "deepsky-sdk-barcode-1.0.11_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

.field public static final enum CALLBACK:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

.field public static final enum CELL:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

.field public static final enum HOME:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

.field public static final enum HOME_FAX:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

.field public static final enum OTHER:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

.field public static final enum PAGER:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

.field public static final enum TEL:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

.field public static final enum VOICE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

.field public static final enum WORK:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

.field public static final enum WORK_FAX:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;


# instance fields
.field private final contactPhoneType:I


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;
    .locals 10

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->HOME_FAX:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->WORK_FAX:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->HOME:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->WORK:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    sget-object v4, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->CELL:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    sget-object v5, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->TEL:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    sget-object v6, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->VOICE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    sget-object v7, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->OTHER:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    sget-object v8, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->PAGER:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    sget-object v9, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->CALLBACK:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    const-string v1, "HOME_FAX"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->HOME_FAX:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    const-string v1, "WORK_FAX"

    const/4 v2, 0x1

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->WORK_FAX:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    const-string v1, "HOME"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->HOME:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    const-string v1, "WORK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->WORK:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->CELL:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    const-string v1, "TEL"

    invoke-direct {v0, v1, v3, v5}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->TEL:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    const-string v1, "VOICE"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->VOICE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->OTHER:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    const-string v1, "PAGER"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->PAGER:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    const-string v1, "CALLBACK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->CALLBACK:Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->$values()[Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->$ENTRIES:Llb/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->contactPhoneType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;
    .locals 1

    const-class v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;

    return-object v0
.end method


# virtual methods
.method public final getContactPhoneType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/NumberType;->contactPhoneType:I

    return p0
.end method
