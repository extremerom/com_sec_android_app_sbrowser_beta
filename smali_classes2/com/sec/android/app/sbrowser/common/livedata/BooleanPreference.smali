.class public final Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;
.super Lcom/sec/android/app/sbrowser/common/livedata/Preference;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/common/livedata/Preference<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002H\u0096@\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u0002H\u0096@\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0010R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;",
        "Lcom/sec/android/app/sbrowser/common/livedata/Preference;",
        "",
        "Landroid/content/SharedPreferences;",
        "preferences",
        "",
        "key",
        "defaultValue",
        "<init>",
        "(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V",
        "getValue",
        "(Lib/c;)Ljava/lang/Object;",
        "value",
        "Ldb/r;",
        "setValue",
        "(ZLib/c;)Ljava/lang/Object;",
        "Landroid/content/SharedPreferences;",
        "Ljava/lang/String;",
        "Z",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final defaultValue:Z

.field private final key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "preferences"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/livedata/Preference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;->preferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;->key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;->defaultValue:Z

    return-void
.end method


# virtual methods
.method public getValue(Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;->preferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;->key:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;->defaultValue:Z

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setValue(ZLib/c;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;->key:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
