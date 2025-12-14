.class public abstract LR5/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LH4/s;

.field public static final b:LR5/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LH4/s;

    invoke-direct {v0}, LH4/s;-><init>()V

    sput-object v0, LR5/j;->a:LH4/s;

    new-instance v0, LR5/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LR5/n;-><init>(I)V

    sput-object v0, LR5/j;->b:LR5/n;

    return-void
.end method
