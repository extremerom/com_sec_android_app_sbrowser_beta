.class public final Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

.field public d:Ljava/lang/Object;

.field public e:Lcom/google/android/material/appbar/model/ButtonStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->a:Landroid/content/Context;

    sget-object p1, Lfb/v;->a:Lfb/v;

    iput-object p1, p0, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;
    .locals 8

    new-instance v6, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;

    sget-object v0, Ltb/x;->a:Ltb/y;

    const-class v1, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;

    invoke-virtual {v0, v1}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->c:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    new-instance v5, Lcom/google/android/material/appbar/model/ButtonListModel;

    iget-object v0, p0, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->e:Lcom/google/android/material/appbar/model/ButtonStyle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/appbar/model/ButtonStyle;

    const v2, 0x7f1501b1

    const v7, 0x7f1501b0

    invoke-direct {v0, v2, v7}, Lcom/google/android/material/appbar/model/ButtonStyle;-><init>(II)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->d:Ljava/lang/Object;

    invoke-direct {v5, v0, v2}, Lcom/google/android/material/appbar/model/ButtonListModel;-><init>(Lcom/google/android/material/appbar/model/ButtonStyle;Ljava/util/List;)V

    iget-object v2, p0, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->a:Landroid/content/Context;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;-><init>(LAb/c;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/ButtonListModel;)V

    return-object v6
.end method
