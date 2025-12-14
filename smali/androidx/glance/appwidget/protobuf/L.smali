.class public abstract Landroidx/glance/appwidget/protobuf/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/glance/appwidget/protobuf/J;

.field public static final b:Landroidx/glance/appwidget/protobuf/K;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/glance/appwidget/protobuf/J;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/glance/appwidget/protobuf/L;->a:Landroidx/glance/appwidget/protobuf/J;

    new-instance v0, Landroidx/glance/appwidget/protobuf/K;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/glance/appwidget/protobuf/L;->b:Landroidx/glance/appwidget/protobuf/K;

    return-void
.end method


# virtual methods
.method public abstract a(JLjava/lang/Object;)V
.end method

.method public abstract b(JLjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract c(JLjava/lang/Object;)Ljava/util/List;
.end method
