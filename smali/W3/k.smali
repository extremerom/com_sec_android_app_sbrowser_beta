.class public interface abstract LW3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LW3/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LW3/l;

    invoke-direct {v0}, LW3/l;-><init>()V

    invoke-virtual {v0}, LW3/l;->b()LW3/n;

    move-result-object v0

    sput-object v0, LW3/k;->a:LW3/n;

    return-void
.end method
