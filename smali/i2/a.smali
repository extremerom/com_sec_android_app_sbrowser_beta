.class public final Li2/a;
.super Li2/b;
.source "SourceFile"


# static fields
.field public static final b:Li2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/a;

    invoke-direct {v0}, Li2/b;-><init>()V

    sput-object v0, Li2/a;->b:Li2/a;

    return-void
.end method
