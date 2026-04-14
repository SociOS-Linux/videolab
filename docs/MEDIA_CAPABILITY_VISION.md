# videolab media capability execution slice

This document turns `videolab` from a generic stub into the incubation home for the
time-based media capability across SourceOS / SociOS.

## Scope

`videolab` owns the **capability implementation surface** for:

- player-shell ergonomics
- transcript and chapter primitives
- storyboard / preview metadata
- clip boundaries and portable playback events
- provider adapters and OS/session bridges

It does **not** own the final canonical cross-ecosystem contract registry. Stable,
vendor-neutral shapes graduate later into `SourceOS-Linux/sourceos-spec`.

## Execution model

The first implementation slice assumes a Source-owned wrapper around upstream media UI
dependencies.

Recommended package shape:

- `packages/source-player-shell` — Source-owned player shell boundary
- `packages/media-provider-html` — native `<video>` / `<audio>` provider
- `packages/media-provider-hls` — HLS provider adapter
- `packages/media-timeline` — transcript / chapter / storyboard normalization
- `packages/media-session-bridge` — browser / OS media-session wiring

## Contract policy

During incubation, schemas in `schemas/` may evolve quickly, but they should remain:

- Linux-first
- open-source and swappable
- independent from vendor-specific prop names
- explicit about timestamps and timeline offsets
- usable by both UI and non-UI automation lanes

## Immediate next slice

1. Add a repo-local `make validate` path and keep it green.
2. Incubate transcript, chapter, storyboard, clip, and playback-event schemas here.
3. Mount the capability into `SociOS-Linux/agentos-spine` via a workspace seam.
4. Promote only the stable shared shapes into `SourceOS-Linux/sourceos-spec`.
