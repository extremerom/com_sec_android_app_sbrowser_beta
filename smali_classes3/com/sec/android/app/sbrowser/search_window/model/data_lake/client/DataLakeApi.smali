.class public final Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\"\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;",
        "",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;",
        "profile",
        "Lhd/I;",
        "createHttpClient",
        "(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;)Lhd/I;",
        "Lhd/C;",
        "createHeaderInterceptor",
        "(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;)Lhd/C;",
        "Lvd/c;",
        "createNetworkInterceptor",
        "()Lvd/c;",
        "",
        "",
        "keyMap",
        "Ljava/util/Map;",
        "Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;",
        "retrofitService$delegate",
        "Ldb/f;",
        "getRetrofitService",
        "()Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;",
        "retrofitService",
        "Lretrofit2/Retrofit;",
        "retrofit$delegate",
        "getRetrofit",
        "()Lretrofit2/Retrofit;",
        "retrofit",
        "Profile",
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


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static keyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final retrofit$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final retrofitService$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->keyMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->retrofitService$delegate:Ldb/f;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->retrofit$delegate:Ldb/f;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->createNetworkInterceptor$lambda$3(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getKeyMap$p()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->keyMap:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->retrofitService_delegate$lambda$0()Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lretrofit2/Retrofit;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->retrofit_delegate$lambda$1()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method private final createHeaderInterceptor(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;)Lhd/C;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$createHeaderInterceptor$$inlined$invoke$1;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$createHeaderInterceptor$$inlined$invoke$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;)V

    return-object p0
.end method

.method private final createHttpClient(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;)Lhd/I;
    .locals 3

    new-instance v0, Lhd/H;

    invoke-direct {v0}, Lhd/H;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->createHeaderInterceptor(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;)Lhd/C;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhd/H;->a(Lhd/C;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->createNetworkInterceptor()Lvd/c;

    move-result-object p0

    const-string p1, "interceptor"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, Lhd/H;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2, p0}, Lhd/H;->b(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1, v2, p0}, Lhd/H;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1, v2, p0}, Lhd/H;->d(JLjava/util/concurrent/TimeUnit;)V

    new-instance p0, Lhd/I;

    invoke-direct {p0, v0}, Lhd/I;-><init>(Lhd/H;)V

    return-object p0
.end method

.method private final createNetworkInterceptor()Lvd/c;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isDataLakeLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lvd/a;->BODY:Lvd/a;

    goto :goto_0

    :cond_0
    sget-object p0, Lvd/a;->BASIC:Lvd/a;

    :goto_0
    new-instance v0, Lvd/c;

    new-instance v1, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    invoke-direct {v0, v1}, Lvd/c;-><init>(Lvd/b;)V

    invoke-virtual {v0, p0}, Lvd/c;->c(Lvd/a;)V

    const-string p0, "x-api-key"

    invoke-virtual {v0, p0}, Lvd/c;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final createNetworkInterceptor$lambda$3(Ljava/lang/String;)V
    .locals 1

    const-string v0, "log"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DataLakeApi"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final getRetrofit()Lretrofit2/Retrofit;
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->retrofit$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0
.end method

.method private static final retrofitService_delegate$lambda$0()Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;

    return-object v0
.end method

.method private static final retrofit_delegate$lambda$1()Lretrofit2/Retrofit;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;->Companion:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile$Companion;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDataLakeServerProfile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDataLakeServerProfile(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile$Companion;->fromValue(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;

    move-result-object v0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->createHttpClient(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;)Lhd/I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lhd/I;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getRetrofitService()Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->retrofitService$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;

    return-object p0
.end method
