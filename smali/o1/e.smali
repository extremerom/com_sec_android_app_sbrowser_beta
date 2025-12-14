.class public abstract Lo1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/datastore/preferences/protobuf/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/datastore/preferences/protobuf/F0;->STRING:Landroidx/datastore/preferences/protobuf/F0;

    sget-object v1, Landroidx/datastore/preferences/protobuf/F0;->MESSAGE:Landroidx/datastore/preferences/protobuf/F0;

    invoke-static {}, Lo1/k;->q()Lo1/k;

    move-result-object v2

    new-instance v3, Landroidx/datastore/preferences/protobuf/Q;

    invoke-direct {v3, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/Q;-><init>(Landroidx/datastore/preferences/protobuf/F0;Landroidx/datastore/preferences/protobuf/F0;Lo1/k;)V

    sput-object v3, Lo1/e;->a:Landroidx/datastore/preferences/protobuf/Q;

    return-void
.end method
