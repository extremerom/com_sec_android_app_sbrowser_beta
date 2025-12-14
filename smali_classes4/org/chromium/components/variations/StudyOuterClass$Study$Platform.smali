.class public final enum Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/variations/StudyOuterClass$Study;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Platform"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/StudyOuterClass$Study$Platform$PlatformVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

.field public static final enum PLATFORM_ANDROID:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

.field public static final PLATFORM_ANDROID_VALUE:I = 0x4

.field public static final enum PLATFORM_ANDROID_WEBLAYER:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

.field public static final PLATFORM_ANDROID_WEBLAYER_VALUE:I = 0x8

.field public static final enum PLATFORM_ANDROID_WEBVIEW:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

.field public static final PLATFORM_ANDROID_WEBVIEW_VALUE:I = 0x6

.field public static final enum PLATFORM_CHROMEOS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

.field public static final enum PLATFORM_CHROMEOS_LACROS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

.field public static final PLATFORM_CHROMEOS_LACROS_VALUE:I = 0x9

.field public static final PLATFORM_CHROMEOS_VALUE:I = 0x3

.field public static final enum PLATFORM_FUCHSIA:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

.field public static final PLATFORM_FUCHSIA_VALUE:I = 0x7

.field public static final enum PLATFORM_IOS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

.field public static final PLATFORM_IOS_VALUE:I = 0x5

.field public static final enum PLATFORM_LINUX:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

.field public static final PLATFORM_LINUX_VALUE:I = 0x2

.field public static final enum PLATFORM_MAC:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

.field public static final PLATFORM_MAC_VALUE:I = 0x1

.field public static final enum PLATFORM_WINDOWS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

.field public static final PLATFORM_WINDOWS_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;
    .locals 10

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_WINDOWS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    sget-object v1, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_MAC:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    sget-object v2, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_LINUX:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    sget-object v3, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_CHROMEOS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    sget-object v4, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_ANDROID:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    sget-object v5, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_IOS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    sget-object v6, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_ANDROID_WEBVIEW:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    sget-object v7, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_FUCHSIA:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    sget-object v8, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_ANDROID_WEBLAYER:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    sget-object v9, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_CHROMEOS_LACROS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    filled-new-array/range {v0 .. v9}, [Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    const-string v1, "PLATFORM_WINDOWS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_WINDOWS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    const-string v1, "PLATFORM_MAC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_MAC:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    const-string v1, "PLATFORM_LINUX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_LINUX:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    const-string v1, "PLATFORM_CHROMEOS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_CHROMEOS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    const-string v1, "PLATFORM_ANDROID"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_ANDROID:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    const-string v1, "PLATFORM_IOS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_IOS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    const-string v1, "PLATFORM_ANDROID_WEBVIEW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_ANDROID_WEBVIEW:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    const-string v1, "PLATFORM_FUCHSIA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_FUCHSIA:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    const-string v1, "PLATFORM_ANDROID_WEBLAYER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_ANDROID_WEBLAYER:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    const-string v1, "PLATFORM_CHROMEOS_LACROS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_CHROMEOS_LACROS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->$values()[Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->$VALUES:[Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform$1;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform$1;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p3, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->value:I

    return-void
.end method

.method public static forNumber(I)Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_CHROMEOS_LACROS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_ANDROID_WEBLAYER:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_FUCHSIA:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_ANDROID_WEBVIEW:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_IOS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_ANDROID:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_CHROMEOS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_LINUX:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_MAC:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->PLATFORM_WINDOWS:Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform$PlatformVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;
    .locals 1

    const-class v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object p0
.end method

.method public static values()[Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->$VALUES:[Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    invoke-virtual {v0}, [Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->value:I

    return p0
.end method
