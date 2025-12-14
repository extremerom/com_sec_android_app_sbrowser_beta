.class public final Lpc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Lpc/d;

.field public static final b:Lpc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpc/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpc/d;->a:Lpc/d;

    new-instance v0, Lpc/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpc/d;->b:Lpc/a;

    return-void
.end method
