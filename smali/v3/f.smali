.class public final synthetic Lv3/f;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/p;


# static fields
.field public static final a:Lv3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lv3/f;

    const-string v5, "getHistories(Lcom/google/android/appfunctions/AppFunctionContext;Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v2, 0x0

    const/4 v1, 0x4

    const-class v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    const-string v4, "getHistories"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lv3/f;->a:Lv3/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    check-cast p2, Lz4/a;

    check-cast p3, Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;

    check-cast p4, Lib/c;

    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getHistories(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
