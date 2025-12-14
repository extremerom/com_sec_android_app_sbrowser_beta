.class final Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion$isBuildTypeUser$2;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltb/m;",
        "Lsb/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion$isBuildTypeUser$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion$isBuildTypeUser$2;

    invoke-direct {v0}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion$isBuildTypeUser$2;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion$isBuildTypeUser$2;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion$isBuildTypeUser$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "ro.build.type"

    const-string v0, "user"

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion$isBuildTypeUser$2;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
