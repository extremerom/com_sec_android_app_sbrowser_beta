.class final enum Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstalledStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

.field public static final enum DISABLED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

.field public static final enum ENABLED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

.field public static final enum LIMITED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->DISABLED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->ENABLED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    sget-object v2, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->LIMITED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->DISABLED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    const-string v1, "ENABLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->ENABLED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    const-string v1, "LIMITED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->LIMITED:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->$values()[Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$InstalledStatus;

    return-object v0
.end method
