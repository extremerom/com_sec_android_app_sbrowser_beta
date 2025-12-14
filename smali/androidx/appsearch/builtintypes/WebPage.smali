.class public final Landroidx/appsearch/builtintypes/WebPage;
.super Landroidx/appsearch/builtintypes/Thing;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation


# instance fields
.field public final l:Landroidx/appsearch/builtintypes/ImageObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroidx/appsearch/builtintypes/ImageObject;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Landroidx/appsearch/builtintypes/Thing;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object p14, p0, Landroidx/appsearch/builtintypes/WebPage;->l:Landroidx/appsearch/builtintypes/ImageObject;

    return-void
.end method
