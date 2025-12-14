.class public final Le7/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le7/r;

.field public b:Z

.field public c:I

.field public d:Le7/r;

.field public e:Ljava/lang/String;

.field public f:Le7/s;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Le7/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Le7/l;->g:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Le7/l;->h:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Le7/l;->a:Le7/r;

    return-void
.end method
