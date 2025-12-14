.class public final Lw2/e;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public a:J


# virtual methods
.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lw2/e;->a:J

    return-wide v0
.end method

.method public final onBindViewHolder(Lw2/H;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lw2/H;->d:Z

    return-void
.end method
