.class public Landroidx/appsearch/builtintypes/Thing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/appsearch/builtintypes/Thing;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/appsearch/builtintypes/Thing;->b:Ljava/lang/String;

    iput p3, p0, Landroidx/appsearch/builtintypes/Thing;->c:I

    iput-wide p4, p0, Landroidx/appsearch/builtintypes/Thing;->d:J

    iput-wide p6, p0, Landroidx/appsearch/builtintypes/Thing;->e:J

    iput-object p8, p0, Landroidx/appsearch/builtintypes/Thing;->f:Ljava/lang/String;

    if-nez p9, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/appsearch/builtintypes/Thing;->g:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/appsearch/builtintypes/Thing;->g:Ljava/util/List;

    :goto_0
    iput-object p10, p0, Landroidx/appsearch/builtintypes/Thing;->h:Ljava/lang/String;

    iput-object p11, p0, Landroidx/appsearch/builtintypes/Thing;->i:Ljava/lang/String;

    iput-object p12, p0, Landroidx/appsearch/builtintypes/Thing;->j:Ljava/lang/String;

    if-nez p13, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/appsearch/builtintypes/Thing;->k:Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-static {p13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/appsearch/builtintypes/Thing;->k:Ljava/util/List;

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/appsearch/builtintypes/Thing;->g:Ljava/util/List;

    return-object p0
.end method
