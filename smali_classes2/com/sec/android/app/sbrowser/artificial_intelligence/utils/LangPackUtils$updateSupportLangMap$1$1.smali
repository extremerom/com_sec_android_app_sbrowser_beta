.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$updateSupportLangMap$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->updateSupportLangMap(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J3\u0010\u0007\u001a\u00020\u00062\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$updateSupportLangMap$1$1",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "langInfo",
        "Ldb/r;",
        "onSuccess",
        "(Ljava/util/HashMap;)V",
        "onFailed",
        "()V",
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


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$updateSupportLangMap$1$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$updateSupportLangMap$1$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getDefaultSupportLangMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->access$setSupportLangMap$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;Ljava/util/Map;)V

    const-string p0, "LangPackUtils"

    const-string v0, "Failed to update supportLangMap"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "langInfo"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$updateSupportLangMap$1$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->access$setSupportLangMap$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;Ljava/util/Map;)V

    const-string p0, "LangPackUtils"

    const-string p1, "Success to update supportLangMap"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
