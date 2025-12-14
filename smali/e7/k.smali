.class public final Le7/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le7/q;

.field public final b:I

.field public final c:Le7/b;


# direct methods
.method public constructor <init>(Le7/q;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le7/k;->a:Le7/q;

    iput p2, p0, Le7/k;->b:I

    new-instance p1, Le7/b;

    invoke-direct {p1, p0}, Le7/b;-><init>(Le7/k;)V

    iput-object p1, p0, Le7/k;->c:Le7/b;

    return-void
.end method
