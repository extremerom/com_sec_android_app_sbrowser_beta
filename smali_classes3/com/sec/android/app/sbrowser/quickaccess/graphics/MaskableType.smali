.class public abstract enum Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

.field public static final enum FULL_MASKABLE:Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

.field public static final enum RESIZE_MASKABLE:Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->FULL_MASKABLE:Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->RESIZE_MASKABLE:Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->FULL_MASKABLE:Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType$2;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->RESIZE_MASKABLE:Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->$values()[Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;

    return-object v0
.end method


# virtual methods
.method public abstract create(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method
