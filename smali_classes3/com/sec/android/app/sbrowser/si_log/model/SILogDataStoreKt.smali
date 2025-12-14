.class public final Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStoreKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\"%\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00008FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroid/content/Context;",
        "Lm1/h;",
        "Lp1/b;",
        "siLogPreferencesDataStore$delegate",
        "Lwb/a;",
        "getSiLogPreferencesDataStore",
        "(Landroid/content/Context;)Lm1/h;",
        "siLogPreferencesDataStore",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[LAb/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LAb/u;"
        }
    .end annotation
.end field

.field private static final siLogPreferencesDataStore$delegate:Lwb/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStoreKt;

    const-string v2, "siLogPreferencesDataStore"

    const-string v3, "getSiLogPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    new-array v1, v4, [LAb/u;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStoreKt;->$$delegatedProperties:[LAb/u;

    const/16 v0, 0xe

    const-string v1, "si_log_datastore"

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v0}, Landroidx/glance/appwidget/protobuf/s0;->f(Ljava/lang/String;LA0/g;LUc/e;I)Lo1/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStoreKt;->siLogPreferencesDataStore$delegate:Lwb/a;

    return-void
.end method

.method public static final getSiLogPreferencesDataStore(Landroid/content/Context;)Lm1/h;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lm1/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStoreKt;->siLogPreferencesDataStore$delegate:Lwb/a;

    sget-object v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStoreKt;->$$delegatedProperties:[LAb/u;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lwb/a;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm1/h;

    return-object p0
.end method
