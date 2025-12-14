.class public final LN3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LN3/b;

.field public final c:LN3/x;

.field public d:Z


# direct methods
.method public constructor <init>(LN3/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LN3/t;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, LN3/t;->a:Ljava/lang/Object;

    iput-object v0, p0, LN3/t;->b:LN3/b;

    iput-object p1, p0, LN3/t;->c:LN3/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;LN3/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LN3/t;->d:Z

    iput-object p1, p0, LN3/t;->a:Ljava/lang/Object;

    iput-object p2, p0, LN3/t;->b:LN3/b;

    const/4 p1, 0x0

    iput-object p1, p0, LN3/t;->c:LN3/x;

    return-void
.end method
