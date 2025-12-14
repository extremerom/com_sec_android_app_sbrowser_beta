.class public abstract Lic/p;
.super Lic/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static e(Lic/m;Lic/p;ILic/M;Ljava/lang/Class;)Lic/o;
    .locals 7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v6, Lic/o;

    new-instance v4, Lic/n;

    const/4 v0, 0x1

    invoke-direct {v4, p2, p3, v0}, Lic/n;-><init>(ILic/M;Z)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lic/o;-><init>(Lic/m;Ljava/lang/Object;Lic/p;Lic/n;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static f(Lic/m;Ljava/io/Serializable;Lic/p;ILic/M;Ljava/lang/Class;)Lic/o;
    .locals 7

    new-instance v6, Lic/o;

    new-instance v4, Lic/n;

    const/4 v0, 0x0

    invoke-direct {v4, p3, p4, v0}, Lic/n;-><init>(ILic/M;Z)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lic/o;-><init>(Lic/m;Ljava/lang/Object;Lic/p;Lic/n;Ljava/lang/Class;)V

    return-object v6
.end method
