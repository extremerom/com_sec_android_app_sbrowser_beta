.class public abstract Lx0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx0/a;

    sget-object v1, Lfb/v;->a:Lfb/v;

    invoke-direct {v0, v1}, Lx0/a;-><init>(Ljava/util/List;)V

    sput-object v0, Lx0/i;->a:Lx0/a;

    return-void
.end method
