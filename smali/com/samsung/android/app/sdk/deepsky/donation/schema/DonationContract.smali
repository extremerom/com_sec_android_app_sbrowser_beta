.class public final Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001f\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u001f\u0010\n\u001a\n \u0005*\u0004\u0018\u00010\u00040\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0007\u001a\u0004\u0008\u000b\u0010\tR\u001f\u0010\r\u001a\n \u0005*\u0004\u0018\u00010\u000c0\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;",
        "",
        "<init>",
        "()V",
        "Landroid/net/Uri;",
        "kotlin.jvm.PlatformType",
        "CONTENT_URI",
        "Landroid/net/Uri;",
        "getCONTENT_URI",
        "()Landroid/net/Uri;",
        "READ_CONTENT_URI",
        "getREAD_CONTENT_URI",
        "Ljava/util/Locale;",
        "DONATION_LOCALE",
        "Ljava/util/Locale;",
        "getDONATION_LOCALE",
        "()Ljava/util/Locale;",
        "deepsky-sdk-smartsuggestion-0.0.2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DONATION_LOCALE:Ljava/util/Locale;

.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final READ_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;

    const-string v0, "content://com.samsung.android.app.deepsky.donation.donateaction/ActionDataTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.app.deepsky.donation.donateaction/ActionView"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->READ_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->DONATION_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCONTENT_URI()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->CONTENT_URI:Landroid/net/Uri;

    return-object p0
.end method
