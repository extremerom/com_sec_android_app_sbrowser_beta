.class public abstract LYc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ6/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LQ6/i;

    const-string v1, "NO_OWNER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LYc/e;->a:LQ6/i;

    return-void
.end method

.method public static a()LYc/d;
    .locals 2

    new-instance v0, LYc/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LYc/d;-><init>(Z)V

    return-object v0
.end method
