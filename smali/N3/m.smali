.class public final LN3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:LN3/p;


# direct methods
.method public constructor <init>(LN3/p;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN3/m;->c:LN3/p;

    iput-object p2, p0, LN3/m;->a:Ljava/lang/String;

    iput-wide p3, p0, LN3/m;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LN3/m;->c:LN3/p;

    invoke-static {v0}, LN3/p;->access$000(LN3/p;)LN3/z;

    move-result-object v1

    iget-object v2, p0, LN3/m;->a:Ljava/lang/String;

    iget-wide v3, p0, LN3/m;->b:J

    invoke-virtual {v1, v3, v4, v2}, LN3/z;->a(JLjava/lang/String;)V

    invoke-static {v0}, LN3/p;->access$000(LN3/p;)LN3/z;

    move-result-object p0

    invoke-virtual {v0}, LN3/p;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LN3/z;->b(Ljava/lang/String;)V

    return-void
.end method
