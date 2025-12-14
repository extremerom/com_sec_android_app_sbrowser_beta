.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private mParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mNamespace:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mParameters:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mUri:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mId:Ljava/lang/String;

    const-string v1, "id must not be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mUri:Ljava/lang/String;

    const-string v1, "uri must not be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mText:Ljava/lang/String;

    const-string v1, "text must not be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;I)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setParameters(Ljava/util/List;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mParameters:Ljava/util/List;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/content/Context;I)Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.resource://"

    const-string v2, "/"

    invoke-static {p2, v0, v2, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mUri:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TextResourceDataDocument$Builder;->mUri:Ljava/lang/String;

    return-object p0
.end method
