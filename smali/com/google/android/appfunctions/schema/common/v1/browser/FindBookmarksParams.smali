.class public final Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;",
        "",
        "java.com.google.android.libraries.llm.appfunctions.appfunctions_schema_appfunctions_schema"
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

.field public final e:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

.field public final f:I


# direct methods
.method public constructor <init>(ILcom/google/android/appfunctions/schema/common/v1/types/DateTime;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iput-object p3, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iput p1, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->f:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->f:I

    iget p1, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->f:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iget-object p0, p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    filled-new-array {v1, v2, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
