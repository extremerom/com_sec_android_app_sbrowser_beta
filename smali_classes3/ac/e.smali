.class public final Lac/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:Lac/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lac/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lac/e;->a:Lac/e;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lac/f;->b:Ljava/util/Set;

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method
