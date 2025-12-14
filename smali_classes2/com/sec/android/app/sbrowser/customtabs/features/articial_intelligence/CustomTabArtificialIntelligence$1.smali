.class Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->getWebContentsLanguageCode(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence$1;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    const-string v0, "CustomTabArtificialIntelligence"

    const-string v1, "[getWebContentsLanguageCode:onFailure]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence$1;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "[getWebContentsLanguageCode:onSuccess] languageCode: "

    const-string v1, "CustomTabArtificialIntelligence"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence$1;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method
