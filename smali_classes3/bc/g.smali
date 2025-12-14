.class public final Lbc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Z

.field public static final j:Ljava/util/HashMap;


# instance fields
.field public a:[I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:[Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:Lbc/b;

.field public h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "true"

    const-string v1, "kotlin.ignore.old.metadata"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lbc/g;->i:Z
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Lbc/g;->i:Z

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbc/g;->j:Ljava/util/HashMap;

    new-instance v1, Lhc/c;

    const-string v2, "kotlin.jvm.internal.KotlinClass"

    invoke-direct {v1, v2}, Lhc/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v1

    sget-object v2, Lbc/b;->CLASS:Lbc/b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhc/c;

    const-string v2, "kotlin.jvm.internal.KotlinFileFacade"

    invoke-direct {v1, v2}, Lhc/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v1

    sget-object v2, Lbc/b;->FILE_FACADE:Lbc/b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhc/c;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClass"

    invoke-direct {v1, v2}, Lhc/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v1

    sget-object v2, Lbc/b;->MULTIFILE_CLASS:Lbc/b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhc/c;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClassPart"

    invoke-direct {v1, v2}, Lhc/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v1

    sget-object v2, Lbc/b;->MULTIFILE_CLASS_PART:Lbc/b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhc/c;

    const-string v2, "kotlin.jvm.internal.KotlinSyntheticClass"

    invoke-direct {v1, v2}, Lhc/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v1

    sget-object v2, Lbc/b;->SYNTHETIC_CLASS:Lbc/b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
