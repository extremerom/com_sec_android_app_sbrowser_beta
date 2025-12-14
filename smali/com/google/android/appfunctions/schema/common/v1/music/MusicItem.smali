.class public final Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;
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
        "Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;",
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

.field public final d:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;

.field public final g:Lcom/google/android/appfunctions/schema/common/v1/types/Date;

.field public final h:Ljava/lang/Long;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

.field public final k:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/Uri;Ljava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/schema/common/v1/types/Date;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/Uri;Ljava/util/List;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artistNames"

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childMusicItemIds"

    invoke-static {p11, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->d:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    iput-object p5, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->g:Lcom/google/android/appfunctions/schema/common/v1/types/Date;

    iput-object p8, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->h:Ljava/lang/Long;

    iput-object p9, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->j:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    iput-object p11, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->d:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->d:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->f:Ljava/util/List;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->g:Lcom/google/android/appfunctions/schema/common/v1/types/Date;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->g:Lcom/google/android/appfunctions/schema/common/v1/types/Date;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->h:Ljava/lang/Long;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->h:Ljava/lang/Long;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->j:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->j:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->k:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->k:Ljava/util/List;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 10

    iget-object v8, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->j:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    iget-object v9, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->d:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    iget-object v3, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->g:Lcom/google/android/appfunctions/schema/common/v1/types/Date;

    iget-object v6, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->h:Ljava/lang/Long;

    iget-object v7, p0, Lcom/google/android/appfunctions/schema/common/v1/music/MusicItem;->i:Ljava/lang/String;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
